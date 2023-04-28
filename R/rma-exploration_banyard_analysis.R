################################################################################

# RMA Exploration - Banyard et al (2008)

################################################################################

packages <- c(
  "tidyverse", 
  "haven", 
  "osfr",
  "qgraph",
  "psychonetrics",
  "lavaan",
  "lme4",
  "performance",
  "semPlot",
  "cowplot",
  "psych",
  "igraph",
  "IsingSampler")

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

# Banyard et al (2008)

## Retrieve data

# The data for this study are available from ICPSR at
# https://www.icpsr.umich.edu/web/NACJD/studies/4367. The data are available
# under specific terms and conditions, and they must be downloaded manually. The
# following code assumes that you have downloaded the data in tab delimited
# format and that all five data files are stored in a directory ./data/banyard/

# Part 1

banyard_1 <- read_tsv("./data/banyard/04367-0001-Data.tsv")

# Part 2

banyard_2 <- read_tsv("./data/banyard/04367-0002-Data.tsv")

# Part 3

banyard_3 <- read_tsv("./data/banyard/04367-0003-Data.tsv")

# Part 4

banyard_4 <- read_tsv("./data/banyard/04367-0004-Data.tsv")

# Part 5

banyard_5 <- read_tsv("./data/banyard/04367-0005-Data.tsv")

## IRMA text

banyard_text <- read_csv("./text/banyard_irma-text.csv")

# Network modeling -------------------------------------------------------------

# Wrangling

## Combine data for pre, post, and 2 month follow up

banyard_1_irma <- banyard_1 %>% 
  select(
    ID, starts_with("preir")
  )

banyard_2_irma <- banyard_2 %>% 
  select(
    ID, starts_with("postir")
  )

banyard_3_irma <- banyard_3 %>% 
  select(
    ID, starts_with("mo2ir")
  )

banyard_irma <- banyard_1_irma %>% 
  left_join(banyard_2_irma, by = "ID") %>% 
  left_join(banyard_3_irma, by = "ID")

banyard_irma[banyard_irma == 9] <- NA

banyard_irma <- banyard_irma %>% 
  select(
    everything(),
    # Removal of filler items
    -ends_with("ir5"),
    -ends_with("ir9"),
    -ends_with("ir15")
  )

# Split into training and test sets

set.seed(1277)

banyard_net <- banyard_irma %>% 
  select(ID, starts_with("preir")) %>% 
  filter(complete.cases(.))

banyard_train <- banyard_net %>% 
  slice_sample(prop = .50, replace = FALSE)

banyard_test <- banyard_net %>% 
  filter(!(ID %in% banyard_train$ID))

banyard_train <- banyard_train %>% 
  select(-ID)

banyard_test <- banyard_test %>% 
  select(-ID)

# Network model derived from training data

if (!file.exists("./output/banyard_network_model_final_1.rds")) {
  
  network_model_1 <- varcov(data = banyard_train,
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
          "./output/banyard_network_model_final_1.rds")
  
} else {
  
  network_model_final_1 <- readRDS("./output/banyard_network_model_final_1.rds")
  
}

network_fit_1 <- network_model_final_1 %>% 
  runmodel()

network_pars_1     <- parameters(network_fit_1)

network_fit_ind_1  <- fit(network_fit_1)

network_graph_1_train <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:17,
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
         nodeNames = banyard_text$text,
         legend.cex = 0.30,
         GLratio = 1.25)

walktrap_1 <- 
  walktrap.community(as.igraph(network_graph_1_train),
                     weights = abs(E(as.igraph(network_graph_1_train))$weight))

network_graph_1_train_walk <- 
  qgraph(getmatrix(network_model_final_1, "omega"),
         labels = 1:17,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_1$membership),
         palette = "colorblind",
         nodeNames = banyard_text$text,
         legend.cex = 0.30,
         legend.mode = "style2",
         GLratio = 1.25,
         title = "Banyard et al (2008) - Training")

## Extract model skeleton

skeleton_1 <- 1 * (getmatrix(network_model_final_1, "omega" ) != 0)

## Confirm in test data

network_model_1_test <- varcov(data = banyard_test,
                               type = "ggm", 
                               omega = skeleton_1)

network_fit_1_test <- network_model_1_test %>% 
  runmodel()

network_pars_1_test     <- parameters(network_fit_1_test)

network_fit_ind_1_test  <- fit(network_fit_1_test)

network_graph_1_test <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:17,
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
         nodeNames = banyard_text$text,
         legend.cex = 0.30,
         GLratio = 1.25)

walktrap_2 <- 
  walktrap.community(as.igraph(network_graph_1_test),
                     weights = abs(E(as.igraph(network_graph_1_test))$weight))

network_graph_1_test_walk <- 
  qgraph(getmatrix(network_fit_1_test, "omega"),
         labels = 1:17,
         layout = network_graph_1_train$layout,
         vsize = 4,
         edge.color = "#151414",
         vTrans = 200,
         negDashed = TRUE,
         curveAll = TRUE,
         groups = as.factor(walktrap_2$membership),
         palette = "colorblind",
         nodeNames = banyard_text$text,
         legend.cex = 0.30,
         legend.mode = "style2",
         GLratio = 1.25,
         title = "Banyard et al (2008) - Test")

# Factor modeling --------------------------------------------------------------

seven_factor <- 
'

sa =~ preir1 + preir16 + preir17 + preir19

de =~ preir7 + preir10 + preir12

wi =~ preir2 + preir4

li =~ preir8 + preir14

te =~ preir3 + preir13

nr =~ preir6 + preir11

mt =~ preir18 + preir20

'

# Results in covariance matrix that is not positive definite
seven_factor_fit <- cfa(model = seven_factor,
                       data = banyard_test)

seven_factor_ind <- fitmeasures(seven_factor_fit)
seven_factor_par <- standardizedsolution(seven_factor_fit)

# Exploratory followed by confirmatory approach

## EFA in training data

banyard_train_parallel <- fa.parallel(banyard_train, fm = "ml")

banyard_train_efa      <- fa(banyard_train, 
                             nfactors = 6, 
                             fm = "ml", 
                             rotate = "promax") 

## CFA in test data

six_factor <- 
'

# Based on factor loads greater than .40

fa1 =~ preir1 + preir8 + preir13 + preir14

fa2 =~ preir3 + preir10 + preir16 + preir18 + preir20

fa3 =~ preir2 + preir4

fa4 =~ preir11 + preir16

fa5 =~ preir11 + preir16

fa6 =~ preir7 + preir12

'
six_factor_fit <- cfa(model = six_factor,
                        data = banyard_test)

six_factor_ind <- fitmeasures(six_factor_fit)
# Because this model has negative variance estimates, standard errors cannot be
# calculated, so the following code does not work.
# six_factor_par <- standardizedsolution(six_factor_fit)

# Change over Time  ------------------------------------------------------------

# Wrangling

banyard_long <- banyard_irma %>% 
  pivot_longer(
    cols          = colnames(select(., -ID)),
    names_pattern = "(.*)(ir.*)",
    names_to      = c("time", "item"),
    values_to     = "rma"
  )

## Sum scores

banyard_wide <- banyard_long %>% 
  pivot_wider(
    id_cols     = c("ID", "time"),
    values_from = "rma",
    names_from  = "item"
  )

banyard_wide$irma_sum <- banyard_wide %>% 
  select(starts_with("ir")) %>% 
  rowSums()

banyard_sum_lmm <- lmer(irma_sum ~ 1 + (1|ID), data = banyard_wide)
banyard_sum_icc <- icc(banyard_sum_lmm, by_group = TRUE)

banyard_wide_sum <- banyard_wide %>% 
  pivot_wider(
    id_cols     = "ID",
    values_from = "irma_sum",
    names_from  = "time"
  )

## Sum score change

banyard_wide_sum <- banyard_wide_sum %>% 
  mutate(
    change_sum_abs_post = abs(pre - post), 
    change_sum_abs_mo2  = abs(post - mo2),
    change_sum_abs_all  = change_sum_abs_post + change_sum_abs_mo2
  )

banyard_wide <- banyard_wide %>% 
  left_join(select(banyard_wide_sum, ID, change_sum_abs_all), by = "ID")

## Response level change

banyard_time_wide <- banyard_long %>% 
  pivot_wider(
    id_cols     = c("ID", "item"),
    values_from = "rma",
    names_from  = "time"
  )

banyard_time_wide <- banyard_time_wide %>% 
  mutate(
    change_abs_post = abs(pre - post), 
    change_abs_mo2  = abs(post - mo2),
    change_abs_all  = change_abs_post + change_abs_mo2
  )

banyard_change_df <- banyard_time_wide %>% 
  group_by(ID) %>% 
  summarise(
    change_abs_total = sum(change_abs_all)
  )

banyard_wide <- banyard_wide %>% 
  left_join(banyard_change_df, by = "ID")

## Item level change

banyard_item <- banyard_long %>% 
  pivot_wider(
    id_cols     = c("ID", "item"),
    names_from  = "time",
    values_from = "rma"
  ) %>% 
  mutate(
    change     = abs(pre - post) + abs(post - mo2)
  ) %>% 
  group_by(item) %>% 
  summarise(
    mean_change  = mean(change, na.rm = TRUE),
    sd_change    = sd(change, na.rm = TRUE),
    freq_change  = sum(change > 0, na.rm = TRUE),
    mean_pre     = mean(pre, na.rm = TRUE),
    sd_pre       = sd(pre, na.rm = TRUE),
    mean_post    = mean(post, na.rm = TRUE),
    sd_post      = sd(post, na.rm = TRUE),
    mean_mo2     = mean(mo2, na.rm = TRUE),
    sd_m02       = sd(mo2, na.rm = TRUE)
  ) %>% 
  arrange(desc(mean_change))

banyard_item_long <- banyard_item %>% 
  pivot_longer(
    cols = c("mean_pre", "mean_post", "mean_mo2"),
    names_to = "time",
    values_to = "rma"
  )

banyard_item_lmm <- lmer(rma ~ 1 + (1|item), data = banyard_item_long)
banyard_item_icc <- icc(banyard_item_lmm, by_group = TRUE)

## Response level change

banyard_response_change <- banyard_long %>% 
  pivot_wider(
    id_cols = c("ID", "item"),
    names_from = "time",
    values_from = "rma"
  ) %>% 
  mutate(
    change_abs = abs(pre - post) + abs(post - mo2)
  ) %>% 
  pivot_longer(
    cols = c("pre", "post", "mo2"),
    names_to = "time",
    values_to = "rma"
  )

set.seed(998)

banyard_response_change$response_id    <- 
  paste(banyard_response_change$ID, banyard_response_change$item, sep = "_")

banyard_response_change$jitter_rma     <- 
  banyard_response_change$rma + runif(nrow(banyard_response_change), -.35, .35)

banyard_response_change$jitter_change  <- 
  banyard_response_change$change_abs + runif(nrow(banyard_response_change), -.35, .35)

## Participant profiles

banyard_wide_sum_complete <- banyard_wide_sum %>% 
  filter(complete.cases(.))

banyard_long_plot <- banyard_long %>% 
  left_join(
    banyard_long %>% 
      group_by(ID, time) %>% 
      summarise(
        sum = sum(rma)
      ),
    by = c("ID", "time")
  ) %>% 
  filter(ID %in% banyard_wide_sum_complete$ID)

banyard_wide_sum_complete$ID <- 1:nrow(banyard_wide_sum_complete)

change_labels <- paste(
  str_pad(1:length(unique(banyard_long_plot$ID)), 3, "left", "0"),
  " (",
  arrange(banyard_wide_sum_complete, desc(pre))$pre,
  "/",
  banyard_wide_sum_complete[arrange(banyard_wide_sum_complete, desc(pre))$ID, ]$post,
  "/",
  banyard_wide_sum_complete[arrange(banyard_wide_sum_complete, desc(pre))$ID, ]$mo2,
  ")",
  sep = ""
)

banyard_long_plot$ID <- factor(banyard_long_plot$ID,
                               levels = unique(arrange(filter(banyard_long_plot, time == "pre"), desc(sum))$ID),
                               labels = change_labels)

banyard_long_plot$time <- factor(banyard_long_plot$time,
                                 levels = c("pre", "post", "mo2"))

## Correlations

banyard_sum_change_cor <- cor.test(banyard_wide$irma_sum, banyard_wide$change_abs_total)

banyard_score_change_abs_cor <- cor.test(banyard_wide$irma_sum, banyard_wide$change_sum_abs_all)

banyard_change_by_item_cor <- cor.test(banyard_item_long$rma, banyard_item_long$mean_change)

# Visualizations

## Sum Score Level

banyard_sum_prepost_plot <- 
  ggplot(banyard_wide_sum,
         aes(
           x = pre,
           y = post
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(20, 120, 10)
  ) +
  scale_x_continuous(
    breaks = seq(20, 120, 10)
  ) +
  labs(
    y     = "IRMA Score, Post",
    x     = "IRMA Score, Pre"
  ) +
  theme_classic()

banyard_sum_postmo2_plot <- 
  ggplot(banyard_wide_sum,
         aes(
           x = post,
           y = mo2
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(20, 120, 10)
  ) +
  scale_x_continuous(
    breaks = seq(20, 120, 10)
  ) +
  labs(
    y     = "IRMA Score, Two Months",
    x     = "IRMA Score, Post"
  ) +
  theme_classic()

banyard_sum_premo2_plot <- 
  ggplot(banyard_wide_sum,
         aes(
           x = pre,
           y = mo2
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(20, 120, 10)
  ) +
  scale_x_continuous(
    breaks = seq(20, 120, 10)
  ) +
  labs(
    y     = "IRMA Score, Two Months",
    x     = "IRMA Score, Pre"
  ) +
  theme_classic()

banyard_sum_by_score_change <- 
  ggplot(banyard_wide,
         aes(
           x = irma_sum,
           y = change_sum_abs_all,
           color = time
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_line(
    aes(
      group = ID
    ),
    color = "darkgrey",
    alpha = .5
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(0, 100, 10)
  ) +
  scale_x_continuous(
    breaks = seq(20, 120, 5)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494", "#A997DF"),
    labels = c("Pre", "Post", "2 Months")
  ) +
  labs(
    color = "Measurement",
    y     = "Absolute Sum Score Change",
    x     = "IRMA Sum Score"
  ) +
  theme_classic()

## Item Level Change

banyard_item_change_plot <- 
  ggplot(banyard_wide,
         aes(
           x = irma_sum,
           y = change_abs_total,
           color = time
         )) +
    geom_smooth(
      method = "lm",
      formula = "y ~ x"
    ) +
    geom_line(
      aes(
        group = ID
      ),
      color = "darkgrey",
      alpha = .5
    ) +
    geom_point() +
    scale_y_continuous(
      breaks = seq(0, 100, 10)
    ) +
    scale_x_continuous(
      breaks = seq(20, 120, 5)
    ) +
    scale_color_manual(
      values = c("#52D1DC", "#2A4494", "#A997DF"),
      labels = c("Pre", "Post", "2 Months")
    ) +
    labs(
      color = "Measurement",
      y     = "Total Absolute Item-Level Change",
      x     = "IRMA Sum Score"
    ) +
    theme_classic()

## Mean Item Agreement

banyard_item_prepost_mean <- 
  ggplot(banyard_item,
         aes(
           x = mean_pre,
           y = mean_post
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(1, 7, .5)
  ) +
  scale_x_continuous(
    breaks = seq(1, 7, .5)
  ) +
  labs(
    y     = "Item Mean, Post",
    x     = "Item Mean, Pre"
  ) +
  theme_classic()

banyard_item_postmo2_mean <- 
  ggplot(banyard_item,
         aes(
           x = mean_post,
           y = mean_mo2
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(1, 7, .5)
  ) +
  scale_x_continuous(
    breaks = seq(1, 7, .5)
  ) +
  labs(
    y     = "Item Mean, Two Months",
    x     = "Item Mean, Post"
  ) +
  theme_classic()

banyard_item_premo2_mean <- 
  ggplot(banyard_item,
         aes(
           x = mean_pre,
           y = mean_mo2
         )) +
  geom_smooth(
    method = "lm",
    formula = "y ~ x"
  ) +
  geom_point() +
  scale_y_continuous(
    breaks = seq(1, 7, .5)
  ) +
  scale_x_continuous(
    breaks = seq(1, 7, .5)
  ) +
  labs(
    y     = "Item Mean, Two Months",
    x     = "Item Mean, Pre"
  ) +
  theme_classic()

banyard_change_by_item <- 
  ggplot(banyard_item_long,
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
    breaks = seq(0, 3.5, .25)
  ) +
  scale_x_continuous(
    breaks = seq(1, 7, .5)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494", "#A997DF"),
    labels = c("Pre", "Post", "2 Months")
  ) +
  labs(
    color = "Measurement",
    y     = "Mean Absolute Change in Item Agreement",
    x     = "Mean Item Agreement"
  ) +
  theme_classic()
  
## Individual response change

banyard_response_change_plot <- 
  ggplot(banyard_response_change,
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
    breaks = seq(0, 15, 1)
  ) +
  scale_x_continuous(
    breaks = seq(1, 7, 1)
  ) +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494", "#A997DF"),
    labels = c("Pre", "Post", "2 Months")
  ) +
  labs(
    color = "Measurement",
    y     = "Absolute Change in Item Agreement",
    x     = "Item Agreement"
  ) +
  theme_classic()

## Create an array of plots

banyard_left_panel <- 
  plot_grid(banyard_sum_prepost_plot, banyard_sum_postmo2_plot,
            banyard_sum_premo2_plot, banyard_item_prepost_mean,
            banyard_item_postmo2_mean, banyard_item_premo2_mean,
            nrow = 3)

banyard_right_panel <- 
  plot_grid(banyard_sum_by_score_change, banyard_item_change_plot,
            banyard_change_by_item, banyard_response_change_plot,
            nrow = 2)

banyard_time_change <-
  plot_grid(banyard_left_panel, banyard_right_panel, 
            nrow = 1, rel_widths = c(1, 2.6))

# Participant change profiles

banyard_item_change <- 
  ggplot(banyard_long_plot,
         aes(
           x = item,
           y = rma,
           color = time,
           group = item
         )) +
  facet_wrap(~ ID) +
  geom_hline(
    yintercept = 4,
    linetype   = "dashed"
  ) +
  geom_line(
    color = "darkgrey"
  ) +
  geom_point() +
  scale_color_manual(
    values = c("#52D1DC", "#2A4494", "#A997DF"),
    labels = c("Pre", "Post", "2 Months")
  ) +
  scale_y_continuous(
    breaks = seq(1, 7, 2)
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

# Export figures ---------------------------------------------------------------

png("./figures/banyard_irma-network_train.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_train)
dev.off()

png("./figures/banyard_irma-network_test.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_test)
dev.off()

png("./figures/banyard_irma-network_train_walktrap.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_train_walk)
dev.off()

png("./figures/banyard_irma-network_test_walktrap.png", 
    height = 6, width = 12, units = "in", res = 1500)
plot(network_graph_1_test_walk)
dev.off()

save_plot("./figures/banyard_time-change.png", banyard_time_change,
          base_height = 8, base_width = 14)

save_plot("./figures/banyard_item-change.png", banyard_item_change,
          base_height = 16, base_width = 16)
