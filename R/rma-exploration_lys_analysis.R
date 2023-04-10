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
  "cowplot",
  "igraph")

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
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_1 <- walktrap.community(as.igraph(network_graph_full_1),
                                 weights = abs(E(as.igraph(network_graph_full_1))$weight))

network_graph_full_1_walk <- 
  qgraph(getmatrix(network_fit_full_1, "omega"),
         labels = 1:19,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1$membership),
         palette = "colorblind")

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
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_2 <- walktrap.community(as.igraph(network_graph_2_post),
                                 weights = abs(E(as.igraph(network_graph_2_post))$weight))

network_graph_2_post_walk <- 
  qgraph(getmatrix(network_fit_2_post, "omega"),
         labels = 1:19,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_2$membership),
         palette = "colorblind")

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
         negDashed = TRUE,
         curveAll = TRUE)

walktrap_3 <- walktrap.community(as.igraph(network_graph_3),
                                 weights = abs(E(as.igraph(network_graph_3))$weight))

network_graph_3_walk <- 
  qgraph(getmatrix(network_fit_3, "omega"),
         labels = 1:19,
         layout = network_graph_full_1$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_3$membership),
         palette = "colorblind")

# Factor modeling --------------------------------------------------------------

# This model represents the best fitting model found in the original article in
# Study 1.

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

# Change over time -------------------------------------------------------------

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

lys_2_sum$id <- 1:nrow(lys_2_sum)

lys_2_response_change <- lys_2_long %>% 
  pivot_wider(
    id_cols = c("id", "item"),
    names_from = "time",
    values_from = "rma"
  ) %>% 
  mutate(
    change_abs = abs(pre_rma - rma)
  ) %>% 
  pivot_longer(
    cols = c("rma", "pre_rma"),
    names_to = "time",
    values_to = "rma"
  )

lys_2_response_change$response_id    <- 
  paste(lys_2_response_change$id, lys_2_response_change$item, sep = "_")

lys_2_response_change$jitter_rma     <- 
  lys_2_response_change$rma + runif(nrow(lys_2_response_change), -.35, .35)

lys_2_response_change$jitter_change  <- 
  lys_2_response_change$change_abs + runif(nrow(lys_2_response_change), -.35, .35)

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

# Response level model

lys_2_response_change_lmm <- lmer(change_abs ~ rma + time + (1 + rma|id), data = lys_2_response_change)

lys_2_response_change_cor <- cor.test(lys_2_response_change$change_abs, lys_2_response_change$rma)

# Visualization of change

lys_2_long_plot <- lys_2_long %>% 
  left_join(
    lys_2_long %>% 
      group_by(id, time) %>% 
      summarise(
        sum = sum(rma)
      ),
    by = c("id", "time")
  )

change_labels <- paste(
  str_pad(1:length(unique(lys_2_long_plot$id)), 3, "left", "0"),
  " (",
  arrange(lys_2_sum, desc(pre_rma_sum))$pre_rma_sum,
  "/",
  lys_2_sum[arrange(lys_2_sum, desc(pre_rma_sum))$id, ]$rma_sum,
  ")",
  sep = ""
)

lys_2_long_plot$id <- factor(lys_2_long_plot$id,
                             levels = unique(arrange(filter(lys_2_long_plot, time == "pre_rma"), desc(sum))$id),
                             labels = change_labels)

lys_2_item_change <- 
ggplot(lys_2_long_plot,
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
    axis.ticks.x = element_blank(),
    legend.position = "bottom"
  )

# Total absolute item-level change

lys_2_change <- lys_2_long %>% 
  pivot_wider(
    id_cols     = c("id", "item"),
    names_from  = "time",
    values_from = "rma"
  ) %>% 
  mutate(
    change     = abs(rma - pre_rma)
  ) %>% 
  group_by(id) %>% 
  summarise(
    total_change = sum(change)
  )

lys_2_sum_long <- lys_2_sum_long %>% 
  left_join(lys_2_change, by = "id")

lys_2_sum_change_cor <- cor.test(lys_2_sum_long$sum, lys_2_sum_long$total_change)

lys_2_sum_by_change <- 
ggplot(lys_2_sum_long,
       aes(
         x = sum,
         y = total_change,
         color = time
       )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_line(
    aes(
      group = id
    ),
    color = "darkgrey",
    alpha = .5
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(0, 30, 5)
  ) +
  scale_x_continuous(
    breaks = seq(20, 80, 5)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494"),
    labels = c("Baseline", "2 weeks")
  ) +
  labs(
    color = "Measurement",
    y     = "Total Absolute Item-Level Change",
    x     = "IRMA Sum Score"
  ) +
  theme_classic()

lys_2_sum_change <- lys_2_sum_long %>% 
  pivot_wider(
    id_cols     = c("id"),
    names_from  = "time",
    values_from = "sum"
  ) %>% 
  mutate(
    score_change       = rma_sum - pre_rma_sum,
    score_change_abs   = abs(rma_sum - pre_rma_sum)
  ) %>% 
  pivot_longer(
    cols      = c("rma_sum", "pre_rma_sum"),
    names_to  = "time",
    values_to = "sum"
  )

lys_2_score_change_cor <- cor.test(lys_2_sum_change$sum, lys_2_sum_change$score_change)
lys_2_score_change_abs_cor <- cor.test(lys_2_sum_change$sum, lys_2_sum_change$score_change_abs)

lys_score_change_abs_pre <- cor.test(filter(lys_2_sum_change, 
                                            time == "pre_rma_sum")$sum, 
                                     filter(lys_2_sum_change, 
                                            time == "pre_rma_sum")$score_change_abs)

lys_score_change_abs_post <- cor.test(filter(lys_2_sum_change, 
                                             time == "rma_sum")$sum, 
                                      filter(lys_2_sum_change, 
                                             time == "rma_sum")$score_change_abs)

lys_2_sum_by_score_change <- 
  ggplot(lys_2_sum_change,
         aes(
           x = sum,
           y = score_change,
           color = time
         )) +
  geom_smooth(
    inherit.aes = FALSE,
    aes(
      x = sum,
      y = score_change
    ),
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_line(
    aes(
      group = id
    ),
    color = "darkgrey",
    alpha = .5
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(-20, 20, 5)
  ) +
  scale_x_continuous(
    breaks = seq(20, 80, 5)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494"),
    labels = c("Baseline", "2 weeks")
  ) +
  labs(
    color = "Measurement",
    y     = "Sum Score Change",
    x     = "IRMA Sum Score"
  ) +
  theme_classic()

lys_2_sum_by_score_change_abs <- 
  ggplot(lys_2_sum_change,
         aes(
           x = sum,
           y = score_change_abs,
           color = time
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_line(
    aes(
      group = id
    ),
    color = "darkgrey",
    alpha = .5
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(-20, 20, 5)
  ) +
  scale_x_continuous(
    breaks = seq(20, 80, 5)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494"),
    labels = c("Baseline", "2 weeks")
  ) +
  labs(
    color = "Measurement",
    y     = "Absolute Sum Score Change",
    x     = "IRMA Sum Score"
  ) +
  theme_classic()

lys_2_sum_pre_post <- 
  ggplot(lys_2_sum,
       aes(
         x = pre_rma_sum,
         y = rma_sum
       )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(20, 80, 5)
  ) +
  scale_x_continuous(
    breaks = seq(20, 80, 5)
  ) +
  labs(
    y     = "IRMA Sum Score, 2 weeks",
    x     = "IRMA Sum Score, Baseline"
  ) +
  theme_classic()

# Change by item 

## Absolute change, by item

lys_2_item <- lys_2_long %>% 
  pivot_wider(
    id_cols     = c("id", "item"),
    names_from  = "time",
    values_from = "rma"
  ) %>% 
  mutate(
    change     = abs(rma - pre_rma)
  ) %>% 
  group_by(item) %>% 
  summarise(
    mean_change  = mean(change),
    sd_change    = sd(change),
    freq_change  = sum(change > 0),
    mean_pre     = mean(pre_rma),
    sd_pre       = sd(pre_rma),
    mean_rma     = mean(rma),
    sd_rma       = sd(rma)
  ) %>% 
  arrange(desc(mean_change))

lys_2_item_mean <- 
ggplot(lys_2_item,
       aes(
         x = mean_pre,
         y = mean_rma
       )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(1, 5, .25)
  ) +
  scale_x_continuous(
    breaks = seq(1, 5, .25)
  ) +
  labs(
    y     = "Mean Item Agreement, 2 weeks",
    x     = "Mean Item Agreement, Baseline"
  ) +
  theme_classic()

lys_2_item_long <- lys_2_item %>% 
  pivot_longer(
    cols = c("mean_rma", "mean_pre"),
    names_to = "time",
    values_to = "rma"
  )

lys_2_change_by_item_cor <- cor.test(lys_2_item_long$mean_change, lys_2_item_long$rma)

lys_2_item_lmm <- lmer(rma ~ 1 + (1|item), data = lys_2_item_long)
lys_2_item_icc <- icc(lys_2_item_lmm, by_group = TRUE)

lys_2_change_by_item <- 
ggplot(lys_2_item_long,
       aes(
         x = rma,
         y = mean_change,
         color = time
       )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_line(
    aes(
      group = item
    ),
    color = "darkgrey",
    alpha = .5
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(0, 1, .2)
  ) +
  scale_x_continuous(
    breaks = seq(1, 5, .25)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494"),
    labels = c("Baseline", "2 weeks")
  ) +
  labs(
    color = "Measurement",
    y     = "Mean Absolute Change in Item Agreement",
    x     = "Mean Item Agreement"
  ) +
  theme_classic()

# Item rating change, response level

lys_2_response_change_plot <- 
ggplot(lys_2_response_change,
       aes(
         x = jitter_rma,
         y = jitter_change,
         color = time
       )) +
  geom_smooth(
    aes(
      x = rma,
      y = change_abs
    ),
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_line(
    aes(
      group = response_id
    ),
    color = "darkgrey",
    alpha = .1
  ) +
  geom_point(
    alpha = .50
  ) +
  scale_y_continuous(
    breaks = seq(0, 4, 1)
  ) +
  scale_x_continuous(
    breaks = seq(1, 5, 1)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494"),
    labels = c("Baseline", "2 weeks")
  ) +
  labs(
    color = "Measurement",
    y     = "Absolute Change in Item Agreement",
    x     = "Item Agreement"
  ) +
  theme_classic()

# Create an array of plots

lys_2_time_change <- 
  plot_grid(lys_2_sum_pre_post, lys_2_sum_by_score_change_abs, lys_2_sum_by_change,
            lys_2_item_mean, lys_2_change_by_item, lys_2_response_change_plot,
            nrow = 2, rel_widths = c(1, 1.3, 1.3, 1, 1.3, 1.3))

# Revisiting Study 1, for further analysis -------------------------------------

# Centrality measures for Study 1

centrality_plot_full <- 
  centralityPlot(network_graph_full_1_walk,
                 include = c("Strength", "Closeness", "Betweenness"))

strength_measure <- centrality_plot_full$data %>% 
  filter(measure == "Strength") %>% 
  arrange(desc(value))

lys_1_mean_strength <- mean(strength_measure$value)

closeness_measure <- centrality_plot_full$data %>% 
  filter(measure == "Closeness")

lys_1_mean_closeness <- mean(closeness_measure$value)

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

lys_centrality_plot <- plot_grid(
  strength_plot, closeness_plot, betweenness_plot,
  nrow = 1, rel_widths = 1, rel_heights = 1)

# Simulation of persuasion

set.seed(1891)

lys_1_model_long <- lys_1_model_df %>%
  pivot_longer(
    cols      = colnames(.),
    values_to = "rma",
    names_to  = "item"
  )

lys_1_summary <- lys_1_model_long %>% 
  group_by(item) %>% 
  summarise(
    mean      = mean(rma),
    threshold = (mean(rma) - 3)
  )


if (!file.exists("./output/lys_1_sim_base.rds")) {
  
  lys_1_sim_base <- 
    IsingSampler(n          = 100000,
                 graph      = getmatrix(network_fit_full_1, "omega"), 
                 thresholds = lys_1_summary$threshold, 
                 responses  = c(0, 1))
  
  saveRDS(lys_1_sim_base,
          "./output/lys_1_sim_base.rds")
  
} else {
  
  lys_1_sim_base <- readRDS("./output/lys_1_sim_base.rds")
  
}

lys_1_sim_base <- as.data.frame(lys_1_sim_base)

lys_1_sim_base$total <- rowSums(lys_1_sim_base)

lys_1_sim_base$id    <- 1:nrow(lys_1_sim_base) 

lys_1_sim_base_weighted <- lys_1_sim_base %>% 
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

lys_1_sim_base_weighted$total <- rowSums(lys_1_sim_base_weighted)

### Histograms of total scores

lys_ising_base_unweighted_hist <- 
  ggplot(lys_1_sim_base,
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

lys_ising_base_weighted_hist <- 
  ggplot(lys_1_sim_base_weighted,
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

sim_thresholds <- lys_1_summary$threshold
sim_thresholds[strongest_node] <- -2


if (!file.exists("./output/lys_1_sim_pers.rds")) {
  
  lys_1_sim_pers <- 
    IsingSampler(n          = 100000,
                 graph      = getmatrix(network_fit_full_1, "omega"), 
                 thresholds = sim_thresholds, 
                 responses  = c(0, 1))
  
  saveRDS(lys_1_sim_pers,
          "./output/lys_1_sim_pers.rds")
  
} else {
  
  lys_1_sim_pers <- readRDS("./output/lys_1_sim_pers.rds")
  
}

lys_1_sim_pers <- as.data.frame(lys_1_sim_pers)

lys_1_sim_pers$total <- rowSums(lys_1_sim_pers)

lys_1_sim_pers$id    <- 1:nrow(lys_1_sim_pers) 

lys_1_sim_pers_weighted <- lys_1_sim_pers %>% 
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

lys_1_sim_pers_weighted$total <- rowSums(lys_1_sim_pers_weighted)

### Histograms of total scores

lys_ising_pers_unweighted_hist <- 
  ggplot(lys_1_sim_pers,
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

lys_ising_pers_weighted_hist <- 
  ggplot(lys_1_sim_pers_weighted,
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

lys_1_base_prop <- mean(lys_1_sim_base[, strongest_node])
lys_1_pers_prop <- mean(lys_1_sim_pers[, strongest_node])

# These effect standardized mean differences estimate the effect of strong
# persuasion on the strongest node in the network on the overall state of the
# network. Two variations are calculated, based on the unweighted sum score and
# based on the scores weighted by the closeness of each node.

lys_1_unweighted_d <- 
  (mean(lys_1_sim_base$total)  - mean(lys_1_sim_pers$total)) / 
  sqrt((sd(lys_1_sim_base$total)^2 + sd(lys_1_sim_pers$total)^2) / 2)

lys_1_weighted_d <- 
  (mean(lys_1_sim_base_weighted$total) - mean(lys_1_sim_pers_weighted$total)) / 
  sqrt((sd(lys_1_sim_base_weighted$total)^2 + sd(lys_1_sim_pers_weighted$total)^2) / 2)

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

png("./figures/lys_irma-network_study-1_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_full_1_walk)
dev.off()

png("./figures/lys_irma-network_study-2-post_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_2_post_walk)
dev.off()

png("./figures/lys_irma-network_study-3_walktrap.png", 
    height = 5.5, width = 9.6, units = "in", res = 1500)
plot(network_graph_3_walk)
dev.off()

save_plot("./figures/lys_item-change_study-2.png", lys_2_item_change,
          base_height = 16, base_width = 16)

save_plot("./figures/lys_sum-change_study-2.png", lys_2_sum_by_change,
          base_height = 6, base_width = 6.5)

save_plot("./figures/lys_time-change_study-2.png", lys_2_time_change,
          base_height = 8, base_width = 14)

save_plot("./figures/lys_centrality_plot.png",
          lys_centrality_plot,
          base_height = 4.5, base_width = 10)

save_plot("./figures/lys_ising_base_unweighted_hist.png",
          lys_ising_base_unweighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/lys_ising_base_weighted_hist.png",
          lys_ising_base_weighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/lys_ising_pers_unweighted_hist.png",
          lys_ising_pers_unweighted_hist,
          base_height = 3.5, base_width = 5)

save_plot("./figures/lys_ising_pers_weighted_hist.png",
          lys_ising_pers_weighted_hist,
          base_height = 3.5, base_width = 5)