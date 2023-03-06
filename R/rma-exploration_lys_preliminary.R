################################################################################

# RMA Exploration - Łyś et al (2023)

################################################################################

packages <- c(
  "tidyverse", 
  "haven", 
  "osfr",
  "qgraph",
  "psychonetrics",
  "lavaan",
  "semPlot",
  "lme4",
  "lmerTest",
  "performance",
  "cowplot")

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

# Łyś et al (2023)

## Retrieve from OSF

# The primary OSF repository for these studies can be found at
# https://osf.io/eu4qd

if (!dir.exists("./data/lys/")) {
  
  
  if (!dir.exists("./data/")) {
    
    dir.create("./data/")
    
  }
  
  dir.create("./data/lys")
  
}

if (!file.exists("./data/lys/study1 reliability and factor analysis.sav")) {
  
  osf_retrieve_file("602b0ac238d7190016749db1") %>% 
    osf_download(
      path = "./data/lys/"
    )
  
}

if (!file.exists("./data/lys/study2 stability.sav")) {
  
  osf_retrieve_file("602b0ac238d719001774d259") %>% 
    osf_download(
      path = "./data/lys/"
    )
  
}

if (!file.exists("./data/lys/study 3 validity.sav")) {
  
  osf_retrieve_file("602b0ac1b78d180023527e89") %>% 
    osf_download(
      path = "./data/lys/"
    )
  
}

## Study 1

lys_1 <- read_sav("./data/lys/study1 reliability and factor analysis.sav")

lys_1 <- lys_1 %>% 
  zap_label() %>% 
  zap_labels()

## Study 2

lys_2 <- read_sav("./data/lys/study2 stability.sav")

lys_2 <- lys_2 %>% 
  zap_label() %>% 
  zap_labels()

## Study 3

lys_3 <- read_sav("./data/lys/study 3 validity.sav")

lys_3 <- lys_3 %>% 
  zap_label() %>% 
  zap_labels()

# Study 1 ----------------------------------------------------------------------

lys_1_model_df <- lys_1 %>% 
  select(
    starts_with("rma"),
    -rma_sum
  ) %>% 
  filter(complete.cases(.))

# Estimate a model from the full Study 1 sample

if (!file.exists("./output/lys_network_model_final_full_1.rds")) {
  
  network_model_1_full <- varcov(data = lys_1_model_df %>% 
                                   select(-id),
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
          "./output/lys_network_model_final_full_1.rds")
  
} else {
  
  network_model_final_full_1 <- readRDS("./output/lys_network_model_final_full_1.rds")
  
}

network_fit_full_1 <- network_model_final_full_1 %>% 
  runmodel()

network_pars_full_1     <- parameters(network_fit_full_1)

network_fit_ind_full_1  <- fit(network_fit_full_1)

network_graph_full_1 <- 
  qgraph(getmatrix(network_fit_full_1, "omega"),
         labels = 1:19,
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

skeleton_full_1 <- 1 * (getmatrix(network_fit_full_1, "omega" ) != 0)

# Study 2 ----------------------------------------------------------------------

lys_2_model_df <- lys_2 %>% 
  select(
    starts_with("rma"),
    starts_with("pre_rma"),
    -starts_with("rma_")
  ) %>% 
  filter(complete.cases(.))

# Using the Study 1 model with the first wave data

# Note that this first wave data is duplicated from Study 1. As such, the model
# is virtually guaranteed to fit very well.

network_model_2_pre <- varcov(data = lys_2_model_df %>% 
                                 select(starts_with("pre_rma")),
                              type = "ggm", 
                              omega = skeleton_full_1)

network_fit_2_pre <- network_model_2_pre %>% 
  runmodel()

network_pars_2_pre     <- parameters(network_fit_2_pre)

network_fit_ind_2_pre  <- fit(network_fit_2_pre)

network_graph_2_pre <- 
  qgraph(getmatrix(network_fit_2_pre, "omega"),
         labels = 1:19,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

# Using the Study 2 model with the second wave data

network_model_2_post <- varcov(data = lys_2_model_df %>% 
                                select(starts_with("rma")),
                               type = "ggm", 
                               omega = skeleton_full_1)

network_fit_2_post <- network_model_2_post %>% 
  runmodel()

network_pars_2_post     <- parameters(network_fit_2_post)

network_fit_ind_2_post  <- fit(network_fit_2_post)

network_graph_2_post <- 
  qgraph(getmatrix(network_fit_2_post, "omega"),
         labels = 1:19,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

# Study 3 ----------------------------------------------------------------------

lys_3_model_df <- lys_3 %>% 
  select(
     starts_with("rma"),
    -starts_with("rma_")
  ) %>% 
  filter(complete.cases(.))

# Using the Study 1 model with the Study 3 data

network_model_3 <- varcov(data = lys_3_model_df %>% 
                            select(starts_with("rma")),
                          type = "ggm", 
                          omega = skeleton_full_1)

network_fit_3 <- network_model_3 %>% 
  runmodel()

network_pars_3     <- parameters(network_fit_3)

network_fit_ind_3  <- fit(network_fit_3)

network_graph_3 <- 
  qgraph(getmatrix(network_fit_3, "omega"),
         labels = 1:19,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.labels = TRUE,
         edge.label.cex = .40,
         edge.label.bg = "white",
         edge.label.position = .28,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = FALSE)

# Factor modeling --------------------------------------------------------------

five_factor <- 
'

sl =~ rma13 + rma14 + rma15 + rma16 + rma18

nr =~ rma11 + rma12 + rma17 + rma19

mt =~ rma5 + rma6 + rma7

sa =~ rma1 + rma2 + rma3 + rma4

jd =~ rma8 + rma9 + rma10


'

# Study 2

five_factor_fit_2 <- cfa(model = five_factor,
                         data = lys_2_model_df)

five_factor_ind_2 <- fitmeasures(five_factor_fit_2)
five_factor_par_2 <- standardizedsolution(five_factor_fit_2)

# Study 3

five_factor_fit_3 <- cfa(model = five_factor,
                         data = lys_3_model_df)

five_factor_ind_3 <- fitmeasures(five_factor_fit_3)
five_factor_par_3 <- standardizedsolution(five_factor_fit_3)

# Change over time --------------------------------------------

lys_2_long <- lys_2_model_df %>% 
  mutate(
    id = 1:nrow(.)
  ) %>% 
  pivot_longer(
    cols = c(starts_with("rma"), starts_with("pre_rma")),
    names_to = c("time", "item"),
    names_pattern = "(p?r?e?_?rma)(\\d?\\d)",
    values_to = "rma"
  )

lys_2_sum <- lys_2_model_df

lys_2_sum$pre_rma_sum <- rowSums(select(lys_2_model_df, starts_with("pre_rma")))
lys_2_sum$rma_sum     <- rowSums(select(lys_2_model_df, starts_with("rma")))

lys_2_sum_long <- lys_2_sum %>% 
  mutate(
    id = 1:nrow(.)
  ) %>%
  pivot_longer(
    cols = c("pre_rma_sum", "rma_sum"),
    names_to = "time",
    values_to = "sum"
  )

# Item model

## Unconditional model

lys_2_uncon <- lmer(rma ~ 1 + (1|id) + (1|item), data = lys_2_long)

lys_2_icc   <- icc(lys_2_uncon, by_group = TRUE)

## Conditional model

lys_2_lmm <- lmer(rma ~ 1 + time + (1 + time|id) + (1 + time|item), data = lys_2_long)

# Sum score model

## Unconditional model

lys_2_sum_uncon <- lmer(sum ~ 1 + (1|id), data = lys_2_sum_long)

lys_2_sum_icc   <- icc(lys_2_sum_uncon, by_group = TRUE) 

## Conditional model

lys_2_sum_uncon <- lmer(sum ~ 1 + time + (1|id), data = lys_2_sum_long)

# Visualization of change

lys_2_item_change <- 
ggplot(lys_2_long,
       aes(
         x = item,
         y = rma,
         color = time,
         group = item
       )) +
  facet_wrap(~ id) +
  geom_hline(
    yintercept = 3,
    linetype   = "dashed"
  ) +
  geom_line(
    color = "darkgrey"
  ) +
  geom_point() +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494"),
    labels = c("Baseline", "2 weeks")
  ) +
  labs(
    color = "Measurement",
    y     = "Agreement",
    x     = ""
  ) +
  theme_classic() +
  theme(
    axis.text.x  = element_blank(),
    axis.ticks.x = element_blank()
  )

# Export figures ---------------------------------------------------------------

png("./figures/lys_irma-network_study-1.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_full_1)
dev.off()

png("./figures/lys_irma-network_study-2-post.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)

plot(network_graph_2_post)
dev.off()

png("./figures/lys_irma-network_study-3.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)

plot(network_graph_3)
dev.off()

save_plot("./figures/lys_item-change_study-2.png", lys_2_item_change,
          base_height = 16, base_width = 16)
