################################################################################

# RMA Exploration - Nyúl & Kende (2021)

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

# Nyúl & Kende (2021)

## Retrieve from OSF

# The primary OSF repository for these studies can be found at
# https://osf.io/mb2sn/?view_only=e7003626fb7448df8019c57d2a61ae9f
# At the time of writing, the OSF repository was private but viewable through
# the view-only link. The data for this study must be downloaded manually.

if (!dir.exists("./data/nyul/")) {
  
  
  if (!dir.exists("./data/")) {
    
    dir.create("./data/")
    
  }
  
  dir.create("./data/nyul")
  
}
 
# if (!file.exists("./data/nyul/Study1_OSF.sav")) {
#   
#   osf_retrieve_file("") %>% 
#     osf_download(
#       path = "./data/nyul/"
#     )
#   
# }
# 
# if (!file.exists("./data/nyul/Study2_OSF.sav")) {
#   
#   osf_retrieve_file("") %>% 
#     osf_download(
#       path = "./data/nyul/"
#     )
#   
# }

# Study 1

nyul_1 <- read_sav("./data/nyul/Study1_OSF.sav")

# Study 2

nyul_2 <- read_sav("./data/nyul/Study2_OSF.sav")

## IRMA text

nyul_text <- read_csv("./text/nyul_irma-text.csv")

# Study 1 ----------------------------------------------------------------------

nyul_1_model_df <- nyul_1 %>% 
  select(
    starts_with("nemes")
  ) %>% 
  filter(complete.cases(.))

# Estimate a model from the full Study 1 sample

if (!file.exists("./output/nyul_network_model_final_full_1.rds")) {
  
  network_model_1_full <- varcov(data = nyul_1_model_df,
                                 type = "ggm",
                                 omega = "Full")
  
  network_model_pruned_full_1 <- network_model_1_full %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_full_1 <- network_model_pruned_full_1 %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_full_1,
          "./output/nyul_network_model_final_full_1.rds")
  
} else {
  
  network_model_final_full_1 <- readRDS("./output/nyul_network_model_final_full_1.rds")
  
}

network_fit_full_1 <- network_model_final_full_1 %>% 
  runmodel()

network_pars_full_1     <- parameters(network_fit_full_1)

network_fit_ind_full_1  <- fit(network_fit_full_1)

network_graph_full_1 <- 
  qgraph(getmatrix(network_fit_full_1, "omega"),
         labels = 1:18,
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
         nodeNames = nyul_text$text,
         legend.cex = 0.38,
         GLratio = 0.90)

walktrap_1 <- walktrap.community(as.igraph(network_graph_full_1),
                                 weights = abs(E(as.igraph(network_graph_full_1))$weight))

network_graph_full_1_walk <- 
  qgraph(getmatrix(network_fit_full_1, "omega"),
         labels = 1:18,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1$membership),
         palette = "colorblind",
         nodeNames = nyul_text$text,
         legend.cex = 0.38,
         legend.mode = "style2",
         GLratio = 0.90,
         title = "Nyúl & Kende (2021, Study 1) - Training")

## Extract model skeleton

skeleton_full_1 <- 1 * (getmatrix(network_fit_full_1, "omega" ) != 0)

# Study 2 ----------------------------------------------------------------------

nyul_2_model_df <- nyul_2 %>% 
  select(
    starts_with("nemes")
  ) %>% 
  filter(complete.cases(.))

# Using the Study 1 model with the Study 3 data

network_model_2 <- varcov(data = nyul_2_model_df,
                          type = "ggm", 
                          omega = skeleton_full_1)

network_fit_2 <- network_model_2 %>% 
  runmodel()

network_pars_2     <- parameters(network_fit_2)

network_fit_ind_2  <- fit(network_fit_2)

network_graph_2 <- 
  qgraph(getmatrix(network_fit_2, "omega"),
         labels = 1:18,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         nodeNames = nyul_text$text,
         legend.cex = 0.38,
         GLratio = 0.90)

walktrap_2 <- walktrap.community(as.igraph(network_graph_2),
                                 weights = abs(E(as.igraph(network_graph_2))$weight))

network_graph_2_walk <- 
  qgraph(getmatrix(network_fit_2, "omega"),
         labels = 1:18,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_2$membership),
         palette = "colorblind",
         nodeNames = nyul_text$text,
         legend.cex = 0.38,
         legend.mode = "style2",
         GLratio = 0.90,
         title = "Nyúl & Kende (2021, Study 2) - Test")

# Connectivity hypothesis ------------------------------------------------------

# Study 1

## Calculate total score for Ambivalent Sexism Scale

nyul_1$asi_sum <- nyul_1  %>% 
  select(
    starts_with("ASI")
  ) %>% 
  rowSums()

nyul_1$asi_level <- cut_number(nyul_1$asi_sum, n = 3)

## Network models for levels of sexism

### Low sexism

if (!file.exists("./output/nyul_1_network_model_low.rds")) {
  
  network_model_low <- varcov(data = nyul_1 %>% 
                                filter(asi_level == levels(nyul_1$asi_level)[1]) %>% 
                                select(
                                  starts_with("nemes")
                                ),
                              type = "ggm",
                              omega = "Full")
  
  network_model_low_pruned <- network_model_low %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_low <- network_model_low_pruned %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_low,
          "./output/nyul_1_network_model_low.rds")
  
} else {
  
  network_model_final_low <- readRDS("./output/nyul_1_network_model_low.rds")
  
}

network_fit_low <- network_model_final_low %>% 
  runmodel()

network_low_pars     <- parameters(network_fit_low)

network_low_fit_ind  <- fit(network_fit_low)

network_graph_low <- 
  qgraph(getmatrix(network_fit_low, "omega"),
         labels = 1:18,
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

paths_low <- centrality(network_graph_low)$ShortestPathLengths[centrality(network_graph_low)$ShortestPathLengths %>% upper.tri()]
paths_low[paths_low == Inf] <- max(paths_low[paths_low != Inf])
aspl_low_1 <- mean(paths_low)

low_summary_1 <- nyul_1 %>% 
  filter(asi_level == levels(nyul_1$asi_level)[1]) %>% 
  select(
    starts_with("nemes")
  ) %>% 
  summarise(
    mean = mean(rowSums(.), na.rm = TRUE),
    sd   = sd(rowSums(.), na.rm = TRUE),
    n    = n()
  )

### Moderate sexism

if (!file.exists("./output/nyul_1_network_model_mod.rds")) {
  
  network_model_mod <- varcov(data = nyul_1 %>% 
                                filter(asi_level == levels(nyul_1$asi_level)[2]) %>% 
                                select(
                                  starts_with("nemes")
                                ),
                              type = "ggm",
                              omega = "Full")
  
  network_model_mod_pruned <- network_model_mod %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_mod <- network_model_mod_pruned %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_mod,
          "./output/nyul_1_network_model_mod.rds")
  
} else {
  
  network_model_final_mod <- readRDS("./output/nyul_1_network_model_mod.rds")
  
}

network_fit_mod <- network_model_final_mod %>% 
  runmodel()

network_mod_pars     <- parameters(network_fit_mod)

network_mod_fit_ind  <- fit(network_fit_mod)

network_graph_mod <- 
  qgraph(getmatrix(network_fit_mod, "omega"),
         labels = 1:18,
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

paths_mod <- centrality(network_graph_mod)$ShortestPathLengths[centrality(network_graph_mod)$ShortestPathLengths %>% upper.tri()]
paths_mod[paths_mod == Inf] <- max(paths_mod[paths_mod != Inf])
aspl_mod_1 <- mean(paths_mod)

mod_summary_1 <- nyul_1 %>% 
  filter(asi_level == levels(nyul_1$asi_level)[2]) %>% 
  select(
    starts_with("nemes")
  ) %>% 
  summarise(
    mean = mean(rowSums(.), na.rm = TRUE),
    sd   = sd(rowSums(.), na.rm = TRUE),
    n    = n()
  )

### High sexism

if (!file.exists("./output/nyul_1_network_model_high.rds")) {
  
  network_model_high <- varcov(data = nyul_1 %>% 
                                 filter(asi_level == levels(nyul_1$asi_level)[3]) %>% 
                                 select(
                                   starts_with("nemes")
                                 ),
                               type = "ggm",
                               omega = "Full")
  
  network_model_high_pruned <- network_model_high %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_high <- network_model_high_pruned %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_high,
          "./output/nyul_1_network_model_high.rds")
  
} else {
  
  network_model_final_high <- readRDS("./output/nyul_1_network_model_high.rds")
  
}

network_fit_high <- network_model_final_high %>% 
  runmodel()

network_high_pars     <- parameters(network_fit_high)

network_high_fit_ind  <- fit(network_fit_high)

network_graph_high <- 
  qgraph(getmatrix(network_fit_high, "omega"),
         labels = 1:18,
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

paths_high <- centrality(network_graph_high)$ShortestPathLengths[centrality(network_graph_high)$ShortestPathLengths %>% upper.tri()]
paths_high[paths_high == Inf] <- max(paths_high[paths_high != Inf])
aspl_high_1 <- mean(paths_high)

high_summary_1 <- nyul_1 %>% 
  filter(asi_level == levels(nyul_1$asi_level)[3]) %>% 
  select(
    starts_with("nemes")
  ) %>% 
  summarise(
    mean = mean(rowSums(.), na.rm = TRUE),
    sd   = sd(rowSums(.), na.rm = TRUE),
    n    = n()
  )

# Study 2

## Calculate total score for Ambivalent Sexism Scale

nyul_2$asi_sum <- nyul_2 %>% 
  select(
    starts_with("hs"),
    starts_with("bs"),
    -BSI, -HSI
  ) %>% 
  rowSums()

nyul_2$asi_level <- cut_number(nyul_2$asi_sum, n = 3)

## Network models for levels of sexism

### Low sexism

if (!file.exists("./output/nyul_2_network_model_low.rds")) {
  
  network_model_low <- varcov(data = nyul_2 %>% 
                                filter(asi_level == levels(nyul_2$asi_level)[1]) %>% 
                                select(
                                  starts_with("nemes")
                                ),
                              type = "ggm",
                              omega = "Full")
  
  network_model_low_pruned <- network_model_low %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_low <- network_model_low_pruned %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_low,
          "./output/nyul_2_network_model_low.rds")
  
} else {
  
  network_model_final_low <- readRDS("./output/nyul_2_network_model_low.rds")
  
}

network_fit_low <- network_model_final_low %>% 
  runmodel()

network_low_pars     <- parameters(network_fit_low)

network_low_fit_ind  <- fit(network_fit_low)

network_graph_low <- 
  qgraph(getmatrix(network_fit_low, "omega"),
         labels = 1:18,
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

paths_low <- centrality(network_graph_low)$ShortestPathLengths[centrality(network_graph_low)$ShortestPathLengths %>% upper.tri()]
paths_low[paths_low == Inf] <- max(paths_low[paths_low != Inf])
aspl_low_2 <- mean(paths_low)

low_summary_2 <- nyul_2 %>% 
  filter(asi_level == levels(nyul_2$asi_level)[1]) %>% 
  select(
    starts_with("nemes")
  ) %>% 
  summarise(
    mean = mean(rowSums(.), na.rm = TRUE),
    sd   = sd(rowSums(.), na.rm = TRUE),
    n    = n()
  )

### Moderate sexism

if (!file.exists("./output/nyul_2_network_model_mod.rds")) {
  
  network_model_mod <- varcov(data = nyul_2 %>% 
                                filter(asi_level == levels(nyul_2$asi_level)[2]) %>% 
                                select(
                                  starts_with("nemes")
                                ),
                              type = "ggm",
                              omega = "Full")
  
  network_model_mod_pruned <- network_model_mod %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_mod <- network_model_mod_pruned %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_mod,
          "./output/nyul_2_network_model_mod.rds")
  
} else {
  
  network_model_final_mod <- readRDS("./output/nyul_2_network_model_mod.rds")
  
}

network_fit_mod <- network_model_final_mod %>% 
  runmodel()

network_mod_pars     <- parameters(network_fit_mod)

network_mod_fit_ind  <- fit(network_fit_mod)

network_graph_mod <- 
  qgraph(getmatrix(network_fit_mod, "omega"),
         labels = 1:18,
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

paths_mod <- centrality(network_graph_mod)$ShortestPathLengths[centrality(network_graph_mod)$ShortestPathLengths %>% upper.tri()]
paths_mod[paths_mod == Inf] <- max(paths_mod[paths_mod != Inf])
aspl_mod_2 <- mean(paths_mod)

mod_summary_2 <- nyul_2 %>% 
  filter(asi_level == levels(nyul_2$asi_level)[2]) %>% 
  select(
    starts_with("nemes")
  ) %>% 
  summarise(
    mean = mean(rowSums(.), na.rm = TRUE),
    sd   = sd(rowSums(.), na.rm = TRUE),
    n    = n()
  )

### High sexism

if (!file.exists("./output/nyul_2_network_model_high.rds")) {
  
  network_model_high <- varcov(data = nyul_2 %>% 
                                 filter(asi_level == levels(nyul_2$asi_level)[3]) %>% 
                                 select(
                                   starts_with("nemes")
                                 ),
                               type = "ggm",
                               omega = "Full")
  
  network_model_high_pruned <- network_model_high %>%
    setoptimizer(optimizer = "ucminf") %>%
    prune(alpha = 0.001, recursive = TRUE, adjust = "fdr")
  
  network_model_final_high <- network_model_high_pruned %>% 
    modelsearch( # This process is computationally intensive
      criterion  = "bic",
      prunealpha = .001,
      addalpha   = .001
    )
  
  saveRDS(network_model_final_high,
          "./output/nyul_2_network_model_high.rds")
  
} else {
  
  network_model_final_high <- readRDS("./output/nyul_2_network_model_high.rds")
  
}

network_fit_high <- network_model_final_high %>% 
  runmodel()

network_high_pars     <- parameters(network_fit_high)

network_high_fit_ind  <- fit(network_fit_high)

network_graph_high <- 
  qgraph(getmatrix(network_fit_high, "omega"),
         labels = 1:18,
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

paths_high <- centrality(network_graph_high)$ShortestPathLengths[centrality(network_graph_high)$ShortestPathLengths %>% upper.tri()]
paths_high[paths_high == Inf] <- max(paths_high[paths_high != Inf])
aspl_high_2 <- mean(paths_high)

high_summary_2 <- nyul_2 %>% 
  filter(asi_level == levels(nyul_2$asi_level)[3]) %>% 
  select(
    starts_with("nemes")
  ) %>% 
  summarise(
    mean = mean(rowSums(.), na.rm = TRUE),
    sd   = sd(rowSums(.), na.rm = TRUE),
    n    = n()
  )

# Export figures ---------------------------------------------------------------

png("./figures/nyul_irma-network_study-1.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_full_1)
dev.off()

png("./figures/nyul_irma-network_study-2.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_2)
dev.off()

png("./figures/nyul_irma-network_study-1_walktrap.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_full_1_walk)
dev.off()

png("./figures/nyul_irma-network_study-2_walktrap.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_2_walk)
dev.off()
