################################################################################

# RMA Exploration - Fernsund & Luke (2023)

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

fernsund <- read.csv(url("https://raw.github.com/RabbitSnore/ammsa-sv/main/data/ammsa_data_clean_no-demographics.csv"))

fernsund <- fernsund %>% 
  filter(att_control_8_text == "+" | att_control_8_text == "ett plustecken")

# The following wrangling code is adapted from code found in the GitHub
# repository for Fernsund & Luke. This code is licensed under GPL 3.0.

fernsund <- fernsund %>% 
  mutate(
    asi_03_disaster_r    = 8 - asi_03_disaster_r,
    asi_06_rominvlvd_r   = 8 - asi_06_rominvlvd_r,
    asi_07_feminists_r   = 8 - asi_07_feminists_r,
    asi_13_complete_r    = 8 - asi_13_complete_r,
    asi_18_kickteasing_r = 8 - asi_18_kickteasing_r,
    
    sc_10_sexualoutlet_r = 8 - sc_10_sexualoutlet_r,
    
    sdo_09_groupsequal_r = 8 - sdo_09_groupsequal_r,
    sdo_10_ourideal_r    = 8 - sdo_10_ourideal_r,
    sdo_11_equalchance_r = 8 - sdo_11_equalchance_r,
    sdo_12_eqlizeconds_r = 8 - sdo_12_eqlizeconds_r,
    sdo_13_increased_r   = 8 - sdo_13_increased_r,
    sdo_14_fewerprblms_r = 8 - sdo_14_fewerprblms_r,
    sdo_15_eqlincomes_r  = 8 - sdo_15_eqlincomes_r,
    sdo_16_dominate_r    = 8 - sdo_16_dominate_r
  )

fernsund <- fernsund %>%
  mutate(
    ammsa_total = rowMeans(
      select(fernsund, starts_with("ammsa")), 
      na.rm = FALSE),
    asi_total = rowMeans(
      select(fernsund, starts_with("asi")), 
      na.rm = FALSE),
    asi_hostile = rowMeans(
      select(fernsund, asi_02_spclfavours, asi_04_inncntrem, asi_05_offended, asi_07_feminists_r, asi_10_appreciate, asi_11_controlmen, asi_14_exgrtwork, asi_15_tightleash, asi_16_faircomp, asi_18_kickteasing_r, asi_21_reasondemands), 
      na.rm = FALSE),
    asi_benevolent = rowMeans(
      select(fernsund, asi_01_nottrlycmplte, asi_03_disaster_r, asi_06_rominvlvd_r, asi_08_qualpurity, asi_09_chersihed, asi_12_adore, asi_13_complete_r, asi_17_pedestal, asi_19_moralsensib, asi_20_sacrifice, asi_22_refinedsense), 
      na.rm = FALSE)
  )

# Connectivity hypothesis ------------------------------------------------------

# Calculate total score for Ambivalent Sexism Scale

fernsund$asi_level <- cut_number(fernsund$asi_total, n = 3)

# Network models for levels of sexism

## Low sexism

if (!file.exists("./output/fernsund_network_model_low.rds")) {
  
  network_model_low <- varcov(data = fernsund %>% 
                                filter(asi_level == levels(fernsund$asi_level)[1]) %>% 
                                select(
                                  starts_with("irma")
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
          "./output/fernsund_network_model_low.rds")
  
} else {
  
  network_model_final_low <- readRDS("./output/fernsund_network_model_low.rds")
  
}

network_fit_low <- network_model_final_low %>% 
  runmodel()

network_low_pars     <- parameters(network_fit_low)

network_low_fit_ind  <- fit(network_fit_low)

network_graph_low <- 
  qgraph(getmatrix(network_fit_low, "omega"),
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

paths_low <- centrality(network_graph_low)$ShortestPathLengths[centrality(network_graph_low)$ShortestPathLengths %>% upper.tri()]
paths_low[paths_low == Inf] <- max(paths_low[paths_low != Inf])
aspl_low <- mean(paths_low)

low_summary <- fernsund %>% 
  filter(asi_level == levels(fernsund$asi_level)[1]) %>% 
  select(
    starts_with("irma")
  ) %>% 
  summarise(
    mean = mean(rowSums(.)),
    sd   = sd(rowSums(.)),
    n    = n()
  )

## Moderate sexism

if (!file.exists("./output/fernsund_network_model_mod.rds")) {
  
  network_model_mod <- varcov(data = fernsund %>% 
                                filter(asi_level == levels(fernsund$asi_level)[2]) %>% 
                                select(
                                  starts_with("irma")
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
          "./output/fernsund_network_model_mod.rds")
  
} else {
  
  network_model_final_mod <- readRDS("./output/fernsund_network_model_mod.rds")
  
}

network_fit_mod <- network_model_final_mod %>% 
  runmodel()

network_mod_pars     <- parameters(network_fit_mod)

network_mod_fit_ind  <- fit(network_fit_mod)

network_graph_mod <- 
  qgraph(getmatrix(network_fit_mod, "omega"),
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

paths_mod <- centrality(network_graph_mod)$ShortestPathLengths[centrality(network_graph_mod)$ShortestPathLengths %>% upper.tri()]
paths_mod[paths_mod == Inf] <- max(paths_mod[paths_mod != Inf])
aspl_mod <- mean(paths_mod)

mod_summary <- fernsund %>% 
  filter(asi_level == levels(fernsund$asi_level)[2]) %>% 
  select(
    starts_with("irma")
  ) %>% 
  summarise(
    mean = mean(rowSums(.)),
    sd   = sd(rowSums(.)),
    n    = n()
  )

## High sexism

if (!file.exists("./output/fernsund_network_model_high.rds")) {
  
  network_model_high <- varcov(data = fernsund %>% 
                                 filter(asi_level == levels(fernsund$asi_level)[3]) %>% 
                                 select(
                                   starts_with("irma")
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
          "./output/fernsund_network_model_high.rds")
  
} else {
  
  network_model_final_high <- readRDS("./output/fernsund_network_model_high.rds")
  
}

network_fit_high <- network_model_final_high %>% 
  runmodel()

network_high_pars     <- parameters(network_fit_high)

network_high_fit_ind  <- fit(network_fit_high)

network_graph_high <- 
  qgraph(getmatrix(network_fit_high, "omega"),
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

paths_high <- centrality(network_graph_high)$ShortestPathLengths[centrality(network_graph_high)$ShortestPathLengths %>% upper.tri()]
paths_high[paths_high == Inf] <- max(paths_high[paths_high != Inf])
aspl_high <- mean(paths_high)

high_summary <- fernsund %>% 
  filter(asi_level == levels(fernsund$asi_level)[3]) %>% 
  select(
    starts_with("irma")
  ) %>% 
  summarise(
    mean = mean(rowSums(.)),
    sd   = sd(rowSums(.)),
    n    = n()
  )
