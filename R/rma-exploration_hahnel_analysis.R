################################################################################

# RMA Exploration - Hahnel et al (2023)

################################################################################

packages <- c(
  "tidyverse", 
  "haven", 
  "osfr",
  "qgraph",
  "psychonetrics",
  "lavaan",
  "semPlot",
  "cowplot",
  "igraph")

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

# Hahnel et al (2023)

## Retrieve from OSF

# The primary OSF repository for these studies can be found at
# https://osf.io/qtbcy/

if (!dir.exists("./data/hahnel/")) {
  
  
  if (!dir.exists("./data/")) {
    
    dir.create("./data/")
    
  }
  
  dir.create("./data/hahnel")
  
}

if (!file.exists("./data/hahnel/RSIMM final data.sav")) {
  
  osf_retrieve_file("62c60e8dc79a4c00329e5bfe") %>% 
    osf_download(
      path = "./data/hahnel/"
    )
  
}

# Load data

hahnel_raw <- read_sav("./data/hahnel/RSIMM final data.sav")

## Cleaning

hahnel <- hahnel_raw %>% 
  select(
    starts_with("Asked_for_it"),
    starts_with("didn_t_mean_to"),
    starts_with("wasnt_really_rape"),
    starts_with("She_lied")
  ) %>% 
  filter(complete.cases(.))

## IRMA text

hahnel_text <- map_df(hahnel, function(x) {attributes(x)$label}) %>% 
  t() %>% 
  as.data.frame()

colnames(hahnel_text) <- "text"

# Network modeling -------------------------------------------------------------

# Split into training and test sets

hahnel$id <- 1:nrow(hahnel)

set.seed(124)

hahnel_train <- hahnel %>% 
  slice_sample(prop = .50, replace = FALSE)

hahnel_test <- hahnel %>% 
  filter(!(id %in% hahnel_train$id))

hahnel_train <- hahnel_train %>% 
  select(-id)

hahnel_test <- hahnel_test %>% 
  select(-id)

# Network model derived from training data

if (!file.exists("./output/hahnel_network_model_final_1.rds")) {
  
  network_model_1 <- varcov(data = hahnel_train,
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
          "./output/hahnel_network_model_final_1.rds")
  
} else {
  
  network_model_final_1 <- readRDS("./output/hahnel_network_model_final_1.rds")
  
}

network_fit_1 <- network_model_final_1 %>% 
  runmodel()

network_pars_1     <- parameters(network_fit_1)

network_fit_ind_1  <- fit(network_fit_1)

network_graph_1_train <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:21,
         layout = "spring",
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         nodeNames = hahnel_text$text,
         legend.cex = 0.30,
         GLratio = 1.25)

walktrap_1 <- 
  walktrap.community(as.igraph(network_graph_1_train),
                     weights = abs(E(as.igraph(network_graph_1_train))$weight))

network_graph_1_train_walk <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:21,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1$membership),
         palette = "colorblind",
         nodeNames = hahnel_text$text,
         legend.cex = 0.30,
         legend.mode = "style2",
         GLratio = 1.25,
         title = "Hahnel et al (2023) - Training")

## Extract model skeleton

skeleton_1 <- 1 * (getmatrix(network_model_final_1, "omega" ) != 0)

## Confirm in test data

network_model_1_test <- varcov(data = hahnel_test,
                               type = "ggm", 
                               omega = skeleton_1)

network_fit_1_test <- network_model_1_test %>% 
  runmodel()

network_pars_1_test     <- parameters(network_fit_1_test)

network_fit_ind_1_test  <- fit(network_fit_1_test)

network_graph_1_test <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:21,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         nodeNames = hahnel_text$text,
         legend.cex = 0.30,
         GLratio = 1.25)

walktrap_2 <- 
  walktrap.community(as.igraph(network_graph_1_test),
                     weights = abs(E(as.igraph(network_graph_1_test))$weight))

network_graph_1_test_walk <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:21,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_2$membership),
         palette = "colorblind",
         nodeNames = hahnel_text$text,
         legend.cex = 0.30,
         legend.mode = "style2",
         GLratio = 1.25,
         title = "Hahnel et al (2023) - Test")

# Factor modeling --------------------------------------------------------------

four_factor <- 
'

sa =~ Asked_for_it_1 + Asked_for_it_2 + Asked_for_it_3 + Asked_for_it_4 + Asked_for_it_5 + Asked_for_it_6

de =~ didn_t_mean_to_7 + didn_t_mean_to_8 + didn_t_mean_to_9 + didn_t_mean_to_10 + didn_t_mean_to_11

wi =~ wasnt_really_rape_12 + wasnt_really_rape_13 + wasnt_really_rape_14 + wasnt_really_rape_15 + Wasnt_really_rape_16

li =~ She_lied_17 + She_lied_18 + She_lied_19 + She_lied_20 + She_lied_21


'

four_factor_fit_train <- cfa(model = four_factor,
                             data = hahnel_train)

four_factor_ind_train <- fitmeasures(four_factor_fit_train)
four_factor_par_train <- standardizedsolution(four_factor_fit_train)

four_factor_fit <- cfa(model = four_factor,
                       data = hahnel_test)

four_factor_ind <- fitmeasures(four_factor_fit)
four_factor_par <- standardizedsolution(four_factor_fit)

# Export figures ---------------------------------------------------------------

png("./figures/hahnel_irma-network_train.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_train)
dev.off()

png("./figures/hahnel_irma-network_test.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_test)
dev.off()

png("./figures/hahnel_irma-network_train_walktrap.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_train_walk)
dev.off()

png("./figures/hahnel_irma-network_test_walktrap.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_test_walk)
dev.off()
