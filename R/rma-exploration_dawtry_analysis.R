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
  "cowplot",
  "psych",
  "igraph",
  "IsingSampler")

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
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_1 <- 
  walktrap.community(as.igraph(network_graph_1_train),
                     weights = abs(E(as.igraph(network_graph_1_train))$weight))

network_graph_1_train_walk <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:22,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1$membership),
         palette = "colorblind")

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
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_2 <- 
  walktrap.community(as.igraph(network_graph_1_test),
                     weights = abs(E(as.igraph(network_graph_1_test))$weight))

network_graph_1_test_walk <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:22,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_2$membership),
         palette = "colorblind")

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

# Revisiting combined data, for further analysis -------------------------------

# Fit model to full data set

network_model_full <- varcov(data = dawtry %>%
                               select(-id),
                             type = "ggm", 
                             omega = skeleton_1)

network_full_fit <- network_model_full %>% 
  runmodel()

network_pars_full     <- parameters(network_full_fit)

network_fit_ind_full  <- fit(network_full_fit)

network_graph_full <- 
  qgraph(getmatrix(network_full_fit, "omega"),
         labels = 1:22,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_full <- 
  walktrap.community(as.igraph(network_graph_full),
                     weights = abs(E(as.igraph(network_graph_full))$weight))

network_graph_full_walk <- 
  qgraph(getmatrix(network_full_fit, "omega"),
         labels = 1:22,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_full$membership),
         palette = "colorblind")

centrality_plot_full <- 
  centralityPlot(network_graph_full_walk,
                 include = c("Strength", "Closeness", "Betweenness"))

strength_measure <- centrality_plot_full$data %>% 
  filter(measure == "Strength") %>% 
  arrange(desc(value))

dawtry_mean_strength <- mean(strength_measure$value)

closeness_measure <- centrality_plot_full$data %>% 
  filter(measure == "Closeness")

dawtry_mean_closeness <- mean(closeness_measure$value)


strength_plot <- 
  ggplot(filter(centrality_plot_full$data, measure == "Strength"),
         aes(
           x = value,
           y = node,
           group = 1
         )) +
  facet_wrap(~ measure) +
  geom_point() +
  geom_path() +
  scale_x_continuous(
    limits = c(0, 1.75),
    breaks = seq(0, 1.75, .25)
  ) +
  labs(
    x = "",
    y = "Item Identifier"
  ) +
  theme_classic()

closeness_plot <- 
  ggplot(filter(centrality_plot_full$data, measure == "Closeness"),
         aes(
           x = value,
           y = node,
           group = 1
         )) +
  facet_wrap(~ measure) +
  geom_point() +
  geom_path() +
  scale_x_continuous(
    limits = c(0, .007),
    breaks = seq(0, .007, .001)
  ) +
  labs(
    x = "",
    y = ""
  ) +
  theme_classic()

betweenness_plot <- 
  ggplot(filter(centrality_plot_full$data, measure == "Betweenness"),
         aes(
           x = value,
           y = node,
           group = 1
         )) +
  facet_wrap(~ measure) +
  geom_point() +
  geom_path() +
  scale_x_continuous(
    limits = c(0, 80),
    breaks = seq(0, 80, 10)
  ) +
  labs(
    x = "",
    y = ""
  ) +
  theme_classic()

dawtry_centrality_plot <- plot_grid(
  strength_plot, closeness_plot, betweenness_plot,
  nrow = 1, rel_widths = 1, rel_heights = 1)

# Simulation of persuasion

set.seed(1989)

dawtry_model_long <- dawtry %>%
  select(-id) %>% 
  pivot_longer(
    cols      = colnames(.),
    values_to = "rma",
    names_to  = "item"
  )

dawtry_summary <- dawtry_model_long %>% 
  group_by(item) %>% 
  summarise(
    mean      = mean(rma, na.rm = TRUE),
    threshold = (mean(rma, na.rm = TRUE) - 3)
  )


if (!file.exists("./output/dawtry_sim_base.rds")) {
  
  dawtry_sim_base <- 
    IsingSampler(n          = 100000,
                 graph      = getmatrix(network_full_fit, "omega"), 
                 thresholds = dawtry_summary$threshold, 
                 responses  = c(0, 1))
  
  saveRDS(dawtry_sim_base,
          "./output/dawtry_sim_base.rds")
  
} else {
  
  balezina_1_sim_pers <- readRDS("./output/dawtry_sim_base.rds")
  
}

dawtry_sim_base <- as.data.frame(dawtry_sim_base)

dawtry_sim_base$total <- rowSums(dawtry_sim_base)

dawtry_sim_base$id    <- 1:nrow(dawtry_sim_base) 

dawtry_sim_base_weighted <- dawtry_sim_base %>% 
  pivot_longer(
    cols          = starts_with("V"),
    values_to     = "rma",
    names_to      = "node",
    names_pattern = "V(.*)"
  ) %>% 
  left_join(closeness_measure, by = "node") %>% 
  mutate(
    weighted = rma * value
  ) %>% 
  pivot_wider(
    id_cols = "id",
    names_from = "node",
    names_prefix = "V",
    values_from = "weighted"
  ) %>% 
  select(-id)

dawtry_sim_base_weighted$total <- rowSums(dawtry_sim_base_weighted)

### Histograms of total scores

dawtry_ising_base_unweighted_hist <- 
  ggplot(dawtry_sim_base,
         aes(
           x = total
         )) +
  geom_histogram(
    binwidth = 1,
    color = "black",
    fill  = "grey"
  ) +
  scale_x_continuous(
    breaks = 0:21
  ) +
  theme_classic()

dawtry_ising_base_weighted_hist <- 
  ggplot(dawtry_sim_base_weighted,
         aes(
           x = total
         )) +
  geom_histogram(
    bins = 22,
    color = "black",
    fill  = "grey"
  ) +
  scale_x_continuous() +
  theme_classic()

## Simulated persuasion on the strongest item

strongest_node <- strength_measure$node[[1]]

sim_thresholds <- dawtry_summary$threshold
sim_thresholds[strongest_node] <- -2

if (!file.exists("./output/dawtry_sim_pers.rds")) {
  
  dawtry_sim_pers <- 
    IsingSampler(n          = 100000,
                 graph      = getmatrix(network_full_fit, "omega"), 
                 thresholds = sim_thresholds, 
                 responses  = c(0, 1))
  
  saveRDS(dawtry_sim_pers,
          "./output/dawtry_sim_pers.rds")
  
} else {
  
  balezina_1_sim_pers <- readRDS("./output/dawtry_sim_pers.rds")
  
}

dawtry_sim_pers <- as.data.frame(dawtry_sim_pers)

dawtry_sim_pers$total <- rowSums(dawtry_sim_pers)

dawtry_sim_pers$id    <- 1:nrow(dawtry_sim_pers) 

dawtry_sim_pers_weighted <- dawtry_sim_pers %>% 
  pivot_longer(
    cols          = starts_with("V"),
    values_to     = "rma",
    names_to      = "node",
    names_pattern = "V(.*)"
  ) %>% 
  left_join(closeness_measure, by = "node") %>% 
  mutate(
    weighted = rma * value
  ) %>% 
  pivot_wider(
    id_cols = "id",
    names_from = "node",
    names_prefix = "V",
    values_from = "weighted"
  ) %>% 
  select(-id)

dawtry_sim_pers_weighted$total <- rowSums(dawtry_sim_pers_weighted)

### Histograms of total scores

dawtry_ising_pers_unweighted_hist <- 
  ggplot(dawtry_sim_pers,
         aes(
           x = total
         )) +
  geom_histogram(
    binwidth = 1,
    color = "black",
    fill  = "grey"
  ) +
  scale_x_continuous(
    breaks = 0:21
  ) +
  theme_classic()

dawtry_ising_pers_weighted_hist <- 
  ggplot(dawtry_sim_pers_weighted,
         aes(
           x = total
         )) +
  geom_histogram(
    bins = 22,
    color = "black",
    fill  = "grey"
  ) +
  scale_x_continuous() +
  theme_classic()

### Effect sizes

# These values provide the proportions of cases where the strongest node has
# taken a value of 1. In this scenario, a value of 1 indicates endorsement of
# the item.

dawtry_base_prop <- mean(dawtry_sim_base[, strongest_node])
dawtry_pers_prop <- mean(dawtry_sim_pers[, strongest_node])

# These effect standardized mean differences estimate the effect of strong
# persuasion on the strongest node in the network on the overall state of the
# network. Two variations are calculated, based on the unweighted sum score and
# based on the scores weighted by the closeness of each node.

dawtry_unweighted_d <- 
  (mean(dawtry_sim_base$total)  - mean(dawtry_sim_pers$total)) / 
  sqrt((sd(dawtry_sim_base$total)^2 + sd(dawtry_sim_pers$total)^2) / 2)

dawtry_weighted_d <- 
  (mean(dawtry_sim_base_weighted$total) - mean(dawtry_sim_pers_weighted$total)) / 
  sqrt((sd(dawtry_sim_base_weighted$total)^2 + sd(dawtry_sim_pers_weighted$total)^2) / 2)

# Export figures ---------------------------------------------------------------

png("./figures/dawtry_irma-network_train.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_1_train)
dev.off()

png("./figures/dawtry_irma-network_test.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_1_test)
dev.off()

png("./figures/dawtry_irma-network_train_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_1_train_walk)
dev.off()

png("./figures/dawtry_irma-network_test_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_1_test_walk)
dev.off()

png("./figures/dawtry_irma-network_fulldata.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_full)
dev.off()

png("./figures/dawtry_irma-network_fulldata_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_full_walk)
dev.off()

save_plot("./figures/dawtry_centrality_plot.png",
          dawtry_centrality_plot,
          base_height = 4.5, base_width = 10)

save_plot("./figures/dawtry_ising_base_unweighted_hist.png",
          dawtry_ising_base_unweighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/dawtry_ising_base_weighted_hist.png",
          dawtry_ising_base_weighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/dawtry_ising_pers_unweighted_hist.png",
          dawtry_ising_pers_unweighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/dawtry_ising_pers_weighted_hist.png",
          dawtry_ising_pers_weighted_hist,
          base_height = 3.5, base_width = 5)
