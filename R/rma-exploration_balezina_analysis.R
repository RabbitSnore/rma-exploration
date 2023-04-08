################################################################################

# RMA Exploration - Balezina (2023)

################################################################################

packages <- c(
  "tidyverse", 
  "readxl", 
  "osfr",
  "qgraph",
  "psychonetrics",
  "lavaan",
  "semPlot",
  "cowplot",
  "igraph",
  "IsingSampler")

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
         edge.label.position = .28,
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
         edge.label.position = .28,
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
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_1 <- walktrap.community(as.igraph(network_graph_reduced_1),
                                 weights = abs(E(as.igraph(network_graph_reduced_1))$weight))

network_graph_reduced_1_walk <- 
  qgraph(getmatrix(network_model_reduced_final_1, "omega"),
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1$membership),
         palette = "colorblind")

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
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_1_test <- walktrap.community(as.igraph(network_graph_reduced_1_test),
                                      weights = abs(E(as.igraph(network_graph_reduced_1_test))$weight))

network_graph_reduced_1_test_walk <- 
  qgraph(getmatrix(network_reduced_1_test, "omega"),
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1_test$membership),
         palette = "colorblind")

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
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_2 <- walktrap.community(as.igraph(network_graph_2),
                                 weights = abs(E(as.igraph(network_graph_2))$weight))

network_graph_2_walk <- 
  qgraph(getmatrix(network_2_fit, "omega"),
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_2$membership),
         palette = "colorblind")

# Reproducing factor models from original paper --------------------------------

seven_factor <- 
'

f1 =~ li_2 + li_3 + li_4
f2 =~ fi_3 + fi_4 + fi_5
f3 =~ de_1 + de_2 + de_5
f4 =~ mt_2 + mt_3 + mt_4
f5 =~ nr_3 + nr_4 + te_4
f6 =~ sa_1 + sa_4 + sa_7
f7 =~ wi_1 + wi_4 + wi_5

'

seven_factor_2 <- 
  '

f1 =~ li2 + li3 + li4
f2 =~ fi3 + fi4 + fi5
f3 =~ de1 + de2 + de5
f4 =~ mt2 + mt3 + mt4
f5 =~ nr3 + nr4 + te4
f6 =~ sa1 + sa4 + sa7
f7 =~ wi1 + wi4 + wi5

'

balezina_1_train_seven_factor_fit <- cfa(seven_factor,
                                         data = balezina_1_reduced_df_train)

balezina_1_test_seven_factor_fit <- cfa(seven_factor,
                                        data = balezina_1_reduced_df_test)

balezina_2_seven_factor_fit <- cfa(seven_factor_2,
                                   data = balezina_2_network_df)

balezina_1_train_seven_factor_ind <- fitmeasures(balezina_1_train_seven_factor_fit)
balezina_1_train_seven_factor_par <- standardizedsolution(balezina_1_train_seven_factor_fit)

balezina_1_test_seven_factor_ind <- fitmeasures(balezina_1_test_seven_factor_fit)
balezina_1_test_seven_factor_par <- standardizedsolution(balezina_1_test_seven_factor_fit)

balezina_2_seven_factor_ind <- fitmeasures(balezina_2_seven_factor_fit)
balezina_2_seven_factor_par <- standardizedsolution(balezina_2_seven_factor_fit)

# Revisiting Study 1, for further analysis -------------------------------------

# Fit model to full data set

network_model_full <- varcov(data = balezina_1_reduced_df %>%
                               select(-respondent_id),
                             type = "ggm", 
                             omega = skeleton_reduced_1)

network_full_fit <- network_model_full %>% 
  runmodel()

network_pars_full     <- parameters(network_full_fit)

network_fit_ind_full  <- fit(network_full_fit)

network_graph_full <- 
  qgraph(getmatrix(network_full_fit, "omega"),
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
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
         labels = 1:21,
         layout = network_graph_reduced_1$layout,
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

balezina_1_mean_strength <- mean(strength_measure$value)

closeness_measure <- centrality_plot_full$data %>% 
  filter(measure == "Closeness")

balezina_1_mean_closeness <- mean(closeness_measure$value)

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

balezina_centrality_plot <- plot_grid(
  strength_plot, closeness_plot, betweenness_plot,
  nrow = 1, rel_widths = 1, rel_heights = 1)

# Simulation of persuasion

set.seed(1212)

balezina_1_reduced_long <- balezina_1_reduced_df %>%
  pivot_longer(
    cols      = colnames(select(., -respondent_id)),
    values_to = "rma",
    names_to  = "item"
  )

balezina_1_summary <- balezina_1_reduced_long %>% 
  group_by(item) %>% 
  summarise(
    mean      = mean(rma),
    threshold = (mean(rma) - 4)
  )

balezina_1_sim_base <- 
  IsingSampler(n          = 100000,
               graph      = getmatrix(network_full_fit, "omega"), 
               thresholds = balezina_1_summary$threshold, 
               responses  = c(0, 1))

balezina_1_sim_base <- as.data.frame(balezina_1_sim_base)

balezina_1_sim_base$total <- rowSums(balezina_1_sim_base)

balezina_1_sim_base$id    <- 1:nrow(balezina_1_sim_base) 

balezina_1_sim_base_weighted <- balezina_1_sim_base %>% 
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

balezina_1_sim_base_weighted$total <- rowSums(balezina_1_sim_base_weighted)

### Histograms of total scores

balezina_ising_base_unweighted_hist <- 
ggplot(balezina_1_sim_base,
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

balezina_ising_base_weighted_hist <- 
  ggplot(balezina_1_sim_base_weighted,
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

sim_thresholds <- balezina_1_summary$threshold
sim_thresholds[strongest_node] <- -3

balezina_1_sim_pers <- 
  IsingSampler(n          = 100000,
               graph      = getmatrix(network_full_fit, "omega"), 
               thresholds = sim_thresholds, 
               responses  = c(0, 1))

balezina_1_sim_pers <- as.data.frame(balezina_1_sim_pers)

balezina_1_sim_pers$total <- rowSums(balezina_1_sim_pers)

balezina_1_sim_pers$id    <- 1:nrow(balezina_1_sim_pers) 

balezina_1_sim_pers_weighted <- balezina_1_sim_pers %>% 
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

balezina_1_sim_pers_weighted$total <- rowSums(balezina_1_sim_pers_weighted)

### Histograms of total scores

balezina_ising_pers_unweighted_hist <- 
  ggplot(balezina_1_sim_pers,
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

balezina_ising_pers_weighted_hist <- 
  ggplot(balezina_1_sim_pers_weighted,
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

balezina_1_base_prop <- mean(balezina_1_sim_base[, strongest_node])
balezina_1_pers_prop <- mean(balezina_1_sim_pers[, strongest_node])

# These effect standardized mean differences estimate the effect of strong
# persuasion on the strongest node in the network on the overall state of the
# network. Two variations are calculated, based on the unweighted sum score and
# based on the scores weighted by the closeness of each node.

balezina_1_unweighted_d <- 
  (mean(balezina_1_sim_base$total) - mean(balezina_1_sim_pers$total)) / 
  sqrt((sd(balezina_1_sim_base$total)^2 + sd(balezina_1_sim_pers$total)^2) / 2)

balezina_1_weighted_d <- 
  (mean(balezina_1_sim_base_weighted$total) - mean(balezina_1_sim_pers_weighted$total)) / 
  sqrt((sd(balezina_1_sim_base_weighted$total)^2 + sd(balezina_1_sim_pers_weighted$total)^2) / 2)

# Export figures ---------------------------------------------------------------

png("./figures/balezina_irma-reduced-network_train.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_reduced_1)
dev.off()

png("./figures/balezina_irma-reduced-network_test.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_reduced_1_test)
dev.off()

png("./figures/balezina_irma-reduced-network_study-2.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_2)
dev.off()

png("./figures/balezina_irma-reduced-network_train_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_reduced_1_walk)
dev.off()

png("./figures/balezina_irma-reduced-network_test_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_reduced_1_test_walk)
dev.off()

png("./figures/balezina_irma-reduced-network_study-2_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_2_walk)
dev.off()

png("./figures/balezina_irma-reduced-network_fulldata.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_full)
dev.off()

png("./figures/balezina_irma-reduced-network_fulldata_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_full_walk)
dev.off()

save_plot("./figures/balezina_centrality_plot.png",
          balezina_centrality_plot,
          base_height = 4.5, base_width = 10)

save_plot("./figures/balezina_ising_base_unweighted_hist.png",
          balezina_ising_base_unweighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/balezina_ising_base_weighted_hist.png",
          balezina_ising_base_weighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/balezina_ising_pers_unweighted_hist.png",
          balezina_ising_pers_unweighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/balezina_ising_pers_weighted_hist.png",
          balezina_ising_pers_weighted_hist,
          base_height = 3.5, base_width = 5)
