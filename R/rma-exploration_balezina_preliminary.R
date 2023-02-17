################################################################################

# RMA Exploration

################################################################################

packages <- c(
  "tidyverse", 
  "readxl", 
  "osfr",
  "psychonetrics")

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

# Balezina (2023)

## Retrieve from OSF

if (!dir.exists("./data/balezina/")) {
  
  dir.create("./data/balezina/")
  
}

if (!file.exists("./data/balezina/Data Study 1.xlsx")) {
  
  osf_retrieve_file("629f50207bb456072b4502dc") %>% 
    osf_download(
      path = "./data/balezina/"
    )
  
}

if (!file.exists("./data/balezina/Data Study 2.xlsx")) {
  
  osf_retrieve_file("629f54857bb456070c4512a2") %>% 
    osf_download(
      path = "./data/balezina/"
    )
  
}

## Study 1

balezina_1 <- read_excel("./data/balezina/Data Study 1.xlsx")

### Fixing up column names

colnames(balezina_1) <- colnames(balezina_1) %>% 
  str_replace_all(pattern = "-| ", "_")

colnames(balezina_1) <- colnames(balezina_1) %>%
  tolower()

## Study 2

balezina_2 <- read_excel("./data/balezina/Data Study 2.xlsx")

# Study 1 ----------------------------------------------------------------------

## Wrangle

balezina_1_model_df <- balezina_1 %>% 
  select(
    respondent_id,
    starts_with("sa"),
    starts_with("wi"),
    starts_with("mt"),
    starts_with("te"),
    starts_with("li"),
    starts_with("de"),
    starts_with("nr"),
    starts_with("te")
    )

### Split into training and test sets

set.seed(4554)

balezina_1_model_df_train <- balezina_1_model_df %>% 
  slice_sample(prop = .50, replace = FALSE)

balezina_1_model_df_test <- balezina_1_model_df %>% 
  filter(!(respondent_id %in% balezina_1_model_df_train$respondent_id))

## Network model

network_model_1 <- varcov(data = balezina_1_model_df_train %>% 
                            select(-respondent_id, everything()),
                             type = "ggm",
                             omega = "Full")

network_model_pruned_1 <- network_model_1 %>%
  setoptimizer(optimizer = "ucminf") %>%
  prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")

network_model_final_1<- network_model_pruned_1 %>% 
  modelsearch( # This process is computationally intensive
    criterion  = "bic",
    prunealpha = .001,
    addalpha   = .001
  )

network_fit_1 <- 
  network_model_final_1 %>% 
  runmodel()

network_pars_1     <- parameters(network_fit_1)

network_fit_ind_1  <- fit(network_fit_1)

network_graph_1 <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:40,
         layout = "spring",
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .50,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

