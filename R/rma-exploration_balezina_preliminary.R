################################################################################

# RMA Exploration

################################################################################

packages <- c(
  "tidyverse", 
  "readxl", 
  "osfr",
  "qgraph",
  "psychonetrics",
  "lavaan",
  "semPlot")

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

# Balezina (2023)

## Retrieve from OSF

# The primary OSF repository for these studies can be found at
# https://osf.io/9uws8/

if (!dir.exists("./data/balezina/")) {
  
  
  if (!dir.exists("./data/")) {
    
    dir.create("./data/")
    
  }
  
  dir.create("./data/balezina")
  
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

### Fixing up column names

colnames(balezina_2) <- colnames(balezina_2) %>% 
  tolower()

# Study 1 ----------------------------------------------------------------------

# Network using full item set, without filler items

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

## Network model derived from training data

if (!file.exists("./output/balezina_network_model_final_1.rds")) {
  
  network_model_1 <- varcov(data = balezina_1_model_df_train %>% 
                            select(-respondent_id),
                             type = "ggm",
                             omega = "Full")

  network_model_pruned_1 <- network_model_1 %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")

  network_model_final_1 <- network_model_pruned_1 %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
  )
  
  saveRDS(network_model_final_1,
          "./output/balezina_network_model_final_1.rds")
  
} else {
  
  network_model_final_1 <- readRDS("./output/balezina_network_model_final_1.rds")
  
}

network_fit_1 <- network_model_final_1 %>% 
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

### Extract model skeleton

skeleton_1 <- 1 * (getmatrix(network_model_final_1, "omega" ) != 0)

## Confirm in test data

network_model_1_test <- varcov(data = balezina_1_model_df_test %>% 
                                 select(-respondent_id),
                               type = "ggm", 
                               omega = skeleton_1)

network_fit_1_test <- network_model_1_test %>% 
  runmodel()

network_pars_1_test     <- parameters(network_fit_1_test)

network_fit_ind_1_test  <- fit(network_fit_1_test)

network_graph_1_test <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:40,
         layout = network_graph_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .50,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

# Network using only items used in Study 1's reduced factor model

## Wrangle

balezina_1_reduced_df <- balezina_1 %>% 
  select(
    respondent_id,
    li_2, li_3, li_4,
    fi_3, fi_4, fi_5,
    de_1, de_2, de_5,
    mt_2, mt_3, mt_4,
    nr_3, nr_4, te_4,
    sa_1, sa_4, sa_7,
    wi_1, wi_4, wi_5
  )

set.seed(8889)

balezina_1_reduced_df_train <- balezina_1_reduced_df %>% 
  slice_sample(prop = .50, replace = FALSE)

balezina_1_reduced_df_test <- balezina_1_reduced_df %>% 
  filter(!(respondent_id %in% balezina_1_reduced_df_train$respondent_id))

## Network model derived from training data

if (!file.exists("./output/balezina_network_model_reduced_final_1.rds")) {
  
  network_model_reduced_1 <- varcov(data = balezina_1_reduced_df_train %>% 
                              select(-respondent_id),
                            type = "ggm",
                            omega = "Full")
  
  network_model_reduced_pruned_1 <- network_model_reduced_1 %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_reduced_final_1 <- network_model_reduced_pruned_1 %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_reduced_final_1,
          "./output/balezina_network_model_reduced_final_1.rds")
  
} else {
  
  network_model_reduced_final_1 <- readRDS("./output/balezina_network_model_reduced_final_1.rds")
  
}

network_reduced_1 <- network_model_reduced_final_1 %>% 
  runmodel()

network_reduced_pars_1     <- parameters(network_reduced_1)

network_reduced_fit_ind_1  <- fit(network_reduced_1)

network_graph_reduced_1 <- 
  qgraph(getmatrix(network_model_reduced_final_1, "omega"),
         labels = 1:21,
         layout = "spring",
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .50,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

### Extract model skeleton

skeleton_reduced_1 <- 1 * (getmatrix(network_model_reduced_final_1, "omega" ) != 0)

## Confirm in test data

network_reduced_1_test <- varcov(data = balezina_1_reduced_df_test %>% 
                                 select(-respondent_id),
                               type = "ggm", 
                               omega = skeleton_reduced_1)

network_reduced_1_test <- network_reduced_1_test %>% 
  runmodel()

network_reduced_pars_1_test     <- parameters(network_reduced_1_test)

network_reduced_fit_ind_1_test  <- fit(network_reduced_1_test)

network_graph_reduced_1_test <- 
  qgraph(getmatrix(network_reduced_1_test, "omega"),
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .50,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

# Testing network model in Study 2

## Wrangle

balezina_2_network_df <- balezina_2 %>% 
  select(
    li2, li3, li4,
    fi3, fi4, fi5,
    de1, de2, de5,
    mt2, mt3, mt4,
    nr3, nr4, te4,
    sa1, sa4, sa7,
    wi1, wi4, wi5
  )

## Confirmatory model

network_2 <- varcov(data = balezina_2_network_df, 
                    type = "ggm", 
                    omega = skeleton_reduced_1)

network_2_fit <- network_2 %>% 
  runmodel()

network_pars_2     <- parameters(network_2_fit)

network_fit_ind_2  <- fit(network_2_fit)

network_graph_2 <- 
  qgraph(getmatrix(network_2_fit, "omega"),
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .50,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

