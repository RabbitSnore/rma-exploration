################################################################################

# RMA Exploration - Dawtry et al (2019)

################################################################################

packages <- c(
  "tidyverse", 
  "haven", 
  "osfr",
  "qgraph",
  "psychonetrics",
  "lavaan",
  "semPlot",
  "psych")

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

# Dawtry et al (2019)

## Retrieve from OSF

# The primary OSF repository for these studies can be found at
# https://osf.io/gb58c/

if (!dir.exists("./data/dawtry/")) {
  
  
  if (!dir.exists("./data/")) {
    
    dir.create("./data/")
    
  }
  
  dir.create("./data/dawtry")
  
}

if (!file.exists("./data/dawtry/Study1.csv")) {
  
  osf_retrieve_file("5ae1db3cbb99c0000f47ce6a") %>% 
    osf_download(
      path = "./data/dawtry/"
    )
  
}

if (!file.exists("./data/dawtry/Study2.csv")) {
  
  # No RMA items in the data
  
  osf_retrieve_file("5ae1db3b6774af000dbfe9f2") %>% 
    osf_download(
      path = "./data/dawtry/"
    )
  
}

if (!file.exists("./data/dawtry/Study3.csv")) {
  
  osf_retrieve_file("5ae1db3ebb99c0001147b761") %>% 
    osf_download(
      path = "./data/dawtry/"
    )
  
}

if (!file.exists("./data/dawtry/Study4.csv")) {
  
  # No RMA items in the data
  
  osf_retrieve_file("5ae1db3ebb99c0001048057a") %>% 
    osf_download(
      path = "./data/dawtry/"
    )
  
}

if (!file.exists("./data/dawtry/Study5.csv")) {
  
  osf_retrieve_file("5ae1db3dbb99c0000f47ce6d") %>% 
    osf_download(
      path = "./data/dawtry/"
    )
  
}

if (!file.exists("./data/dawtry/Study6.csv")) {
  
  # No RMA items in the data
  
  osf_retrieve_file("5b79daf2410f920015e73b29") %>% 
    osf_download(
      path = "./data/dawtry/"
    )
  
}

# Study 1

dawtry_1 <- read.csv("./data/dawtry/Study1.csv")

# Study 3

dawtry_3 <- read.csv("./data/dawtry/Study3.csv")

# Study 5

dawtry_5 <- read.csv("./data/dawtry/Study5.csv")

# Combine data

dawtry_1_irma <- dawtry_1 %>% 
  select(starts_with("RMAS"))

dawtry_3_irma <- dawtry_3 %>% 
  select(starts_with("RMAS"))

dawtry_5_irma <- dawtry_5 %>% 
  select(starts_with("IRMAS_"))

colnames(dawtry_5_irma) <- str_replace(colnames(dawtry_5_irma), "I", "")

dawtry <- bind_rows(dawtry_1_irma, dawtry_3_irma, dawtry_5_irma)

# Network modeling -------------------------------------------------------------

# Split into training and test sets

dawtry$id <- 1:nrow(dawtry)

set.seed(776)

dawtry_train <- dawtry %>% 
  slice_sample(prop = .50, replace = FALSE)

dawtry_test <- dawtry %>% 
  filter(!(id %in% dawtry_train$id))

dawtry_train <- dawtry_train %>% 
  select(-id)

dawtry_test <- dawtry_test %>% 
  select(-id)

# Network model derived from training data

if (!file.exists("./output/dawtry_network_model_final_1.rds")) {
  
  network_model_1 <- varcov(data = dawtry_train,
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
          "./output/dawtry_network_model_final_1.rds")
  
} else {
  
  network_model_final_1 <- readRDS("./output/dawtry_network_model_final_1.rds")
  
}

network_fit_1 <- network_model_final_1 %>% 
  runmodel()

network_pars_1     <- parameters(network_fit_1)

network_fit_ind_1  <- fit(network_fit_1)

network_graph_1_train <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:22,
         layout = "spring",
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

## Extract model skeleton

skeleton_1 <- 1 * (getmatrix(network_model_final_1, "omega" ) != 0)

## Confirm in test data

network_model_1_test <- varcov(data = dawtry_test,
                               type = "ggm", 
                               omega = skeleton_1)

network_fit_1_test <- network_model_1_test %>% 
  runmodel()

network_pars_1_test     <- parameters(network_fit_1_test)

network_fit_ind_1_test  <- fit(network_fit_1_test)

network_graph_1_test <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:22,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

# Factor modelling -------------------------------------------------------------

# Exploratory factor analysis

# Because Dawtry et al did not use subscales, used all the items from the
# McMahon and Farmer scale (despite them having dropped items from their final
# scale), and took no explicit position on the factor structure of the IRMA, I
# took an EFA approach with the training data to find an empirically-based
# factor structure.

parallel_train <- fa.parallel(dawtry_train)

efa_train      <- fa(dawtry_train,
                     nfactors = 5,
                     rotate = "oblimin")

# Confirmatory factor analysis

# using highest loading of each item to guide factor structure. each loading was
# greater than .30. item 17 crossloaded on the "resistance" factor, but this
# crossloading was ignored.

five_factor <- 
'

asked        =~ RMAS_1 + RMAS_2 + RMAS_3 + RMAS_4 + RMAS_6

mean_to      =~ RMAS_7 + RMAS_8 + RMAS_9 + RMAS_10

resist_drunk =~ RMAS_5 + RMAS_11 + RMAS_12 + RMAS_15 + RMAS_16

lied_nr      =~ RMAS_17 + RMAS_18 + RMAS_19 + RMAS_20 + RMAS_21 + RMAS_22

resist       =~ RMAS_13 + RMAS_14


'

five_factor_fit <- cfa(model = five_factor,
                       data = dawtry_test)

five_factor_ind <- fitmeasures(five_factor_fit)
five_factor_par <- standardizedsolution(five_factor_fit)

# Export figures ---------------------------------------------------------------

png("./figures/dawtry_irma-network_train.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_1_train)
dev.off()

png("./figures/dawtry_irma-network_test.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_1_test)
dev.off()

