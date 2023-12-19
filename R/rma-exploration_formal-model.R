################################################################################

# RMA Exploration - Formal model of rape myth endorsement

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
  "foreach",
  "doParallel")

lapply(packages, library, character.only = TRUE)

# Define functions -------------------------------------------------------------

# Convert means into thresholds

thresholds <- function(m, n) {
  
  p <- m / n
  
  -log(p / (1 - p))
  
}

# Convert adjacency matrix from correlations to log odds

r_to_lor <- function(r) {
  
  ((2 * r) / sqrt(1 - r^2)) * (pi/sqrt(3))
  
}

# Probability of activation

activation <- function(adjacency, x, b, index, m) {
  
  # adjacency = adjacency matrix of log odds weights
  # x         = vector of myth endorsements
  # b         = vector of threshold values for each myth
  # index     = index of current myth of interest
  # L         = deactivation parameter
  # rho       = motivation parameter

  # Activation function
  
  ## Get adjacent weights
  
  w <- adjacency[ , index]
  
  ## Return activation value 
  
  A <-  sum(w * x) + m
  
  # Probability function
  
  p <- 1 / (1 + exp(b[index] - A))
  
  # Return probability of activation
  
  return(p)
  
}

# Load empirical benchmarks ----------------------------------------------------

# Łyś et al (2023)

## Raw data 

lys_1 <- read_sav("./data/lys/study1 reliability and factor analysis.sav")

lys_1 <- lys_1 %>% 
  zap_label() %>% 
  zap_labels()

lys_1_model_df <- lys_1 %>% 
  select(
    starts_with("rma"),
    -rma_sum
  ) %>% 
  filter(complete.cases(.))

lys_rma_means   <- map_dbl(lys_1_model_df, mean)

scale_points    <- max(lys_1$rma1, na.rm = TRUE) - 1

scale_param     <- mean(0:scale_points)

lys_thresholds  <- thresholds(lys_rma_means, scale_points + 1)

threshold_scale <- scale_points - scale_param

## Network model

lys_full_network <- readRDS("./output/lys_network_model_final_full_1.rds")

lys_adjacency    <- r_to_lor(getmatrix(lys_full_network, "omega"))

lys_adjacency    <- lys_adjacency / threshold_scale

# Simulation 1: Constant Motivation --------------------------------------------

# Set up

n <- 200

t <- 50

n_myths <- length(lys_rma_means)

myth_data <- as.data.frame(matrix(rep(NA, n_myths * t), nrow = t))

myths_p <- rep(NA, n_myths)

## Parameters

connectivity <- c(0.75, 1.00, 1.25)

m            <- round(seq(-.45, .45, .15), 2)

parameter_data <- expand_grid(connectivity, m)

# Set up parallel processing

registerDoParallel(cl = (detectCores() - 2)/2,
                   cores = detectCores() - 2)

# Run simulation

set.seed(8989)

sim_data <- foreach(g = 1:nrow(parameter_data), 
                    .combine  = bind_rows, 
                    .packages = packages) %dopar% {
  
  foreach(k = 1:n, .combine = bind_rows) %do% {
    
    for (i in 1:t) {
      
      if (i > 1) {
        
        # On subsequent iterations, use the previous time's values
        
        myths_t0 <- myths_t1
        
      } else {
        
        # Set starting levels based on estimated thresholds
        
        myths_t0 <- rbinom(n_myths, 
                           scale_points, 
                           1 / (1 + exp(lys_thresholds))) - scale_param
        
      }
      
      # Iterate over myths
      
      for (j in 1:n_myths) {
        
        # Generate probabilities
        
        myths_p[j] <- activation(
          adjacency = lys_adjacency * parameter_data$connectivity[g],
          x         = myths_t0, 
          b         = lys_thresholds,
          index     = j,
          m         = parameter_data$m[g]
        )
        
      }
      
      # Generate values and center
      
      myths_t1 <- rbinom(n_myths, scale_points, myths_p) - scale_param
      
      # Store values
      
      myth_data[i, 1:n_myths] <- myths_t1
      
    }
    
    # Store relevant parameters
    
    myth_data$case         <- paste(g, k, sep = "_")
    myth_data$connectivity <- parameter_data$connectivity[g]
    myth_data$m            <- parameter_data$m[g]
    
    # Print data (so the loop stores and combines them)
    
    myth_data
    
  }
  
}

## Clean up simulated data

sim_data <- sim_data %>% 
  group_by(case) %>% 
  mutate(
    t = 1:n()
  ) %>% 
  ungroup() %>% 
  relocate(
    case, t,
    .before = V1
  )

sim_data$rma_sum <- rowSums(select(sim_data, starts_with("V")))

# Visualization

rma_trajectories <- 
ggplot(sim_data,
       aes(
         y = rma_sum,
         x = t,
         group = case
       )) +
  facet_grid(m ~ connectivity) +
  geom_line(
    alpha = .05
  ) +
  geom_hline(
    yintercept = n_myths * -scale_param,
    linetype   = "dotted"
  ) +
  scale_y_continuous(
    limits = c(n_myths * -scale_param, n_myths * scale_param)
  ) +
  scale_x_continuous(
    breaks = seq(0, nrow(myth_data), 10)
  ) +
  labs(
    y = "Sum Score",
    x = "Time"
  ) +
  theme_classic()

# Analysis of (in)stability

## Sum score

sim_1_sum <- sim_data %>% 
  group_by(case) %>% 
  summarise(
    sum_variance = sd(rma_sum)
  ) %>% 
  ungroup() %>% 
  left_join(sim_data, y = ., by = "case")

sim_1_sum_cor <- sim_1_sum %>% 
  group_by(connectivity, m) %>% 
  summarise(
    cor = cor(rma_sum, sum_variance)
  )

sim_1_sum_change_plot <- 
ggplot(sim_1_sum,
       aes(
         x = rma_sum,
         y = sum_variance
       )) +
  facet_grid(m ~ connectivity) +
  geom_jitter(
    alpha = .01,
    width = .25
  ) +
  geom_smooth(
    method  = "lm",
    formula = "y ~ x",
    se      = FALSE,
    alpha   = .25
  ) +
  labs(
    x = "Sum Score",
    y = "Change in Sum Score (SD across time)"
  ) +
  theme_classic()

sim_1_sum_cor_plot <- 
ggplot(sim_1_sum_cor,
       aes(
         x = m,
         y = cor
       )) +
  facet_wrap(~ connectivity) +
  geom_hline(
    yintercept = 0,
    linetype = "dashed"
  ) +
  geom_point() +
  geom_line(
    group = 1
  ) +
  theme_classic()

## Items

sim_1_item_long <- sim_data %>% 
  pivot_longer(
    cols      = starts_with("V"),
    names_to  = "item",
    values_to = "rating"
  )

sim_1_item <- sim_1_item_long %>% 
  group_by(connectivity, m, item) %>% 
  summarise(
    item_mean     = mean(rating),
    item_variance = sd(rating)
  ) %>% 
  ungroup() 

sim_1_item_cor <- sim_1_item %>% 
  group_by(connectivity, m) %>% 
  summarise(
    item_cor      = cor(item_mean, item_variance)
  )

sim_1_item_cor_plot <- 
  ggplot(sim_1_item,
         aes(
           x = item_mean,
           y = item_variance
         )) +
  facet_grid(m ~ connectivity) +
  geom_smooth(
    method  = "lm",
    formula = "y ~ x",
    se      = FALSE,
    alpha   = .25
  ) +
  geom_point() +
  labs(
    x = "Item Mean",
    y = "Change in Item Rating (SD across time)"
  ) +
  theme_classic()

# Simulation 2: Variable Motivation --------------------------------------------

# Set up

## Parameters

motivation_rising  <- seq(-0.45, 0.45, length = t)
motivation_falling <- seq(0.45, -0.45, length = t)
motivation_break   <- c(rep(.30, t/2), -1.00, rep(.30, (t/2) - 1))

rising_data  <- expand_grid(connectivity, 
                            m = motivation_rising, 
                            trend = "Rising")

falling_data <- expand_grid(connectivity, 
                            m = motivation_falling, 
                            trend = "Falling")

break_data   <- expand_grid(connectivity, 
                            m = motivation_break, 
                            trend = "Break")

parameter_data_2 <- bind_rows(rising_data, falling_data, break_data)

runs <- expand_grid(connectivity, trend = c("Rising", "Falling", "Break"))

# Run simulation

set.seed(777)

sim_data_2 <- foreach(g = 1:nrow(runs), 
                     .combine  = bind_rows, 
                     .packages = packages) %dopar% {
  
  parameter_current <- parameter_data_2 %>% 
    filter(connectivity == runs$connectivity[g] & trend == runs$trend[g])
                                           
  foreach(k = 1:n, .combine = bind_rows) %do% {
                        
    for (i in 1:t) {
      
      if (i > 1) {
        
        # On subsequent iterations, use the previous time's values
        
        myths_t0 <- myths_t1
        
      } else {
        
        # Set starting levels based on estimated thresholds
        
        myths_t0 <- rbinom(n_myths, 
                           scale_points, 
                           1 / (1 + exp(lys_thresholds))) - scale_param
        
      }
      
      # Iterate over myths
      
      for (j in 1:n_myths) {
        
        # Generate probabilities
        
        myths_p[j] <- activation(
          adjacency = lys_adjacency * parameter_current$connectivity[t],
          x         = myths_t0, 
          b         = lys_thresholds, 
          index     = j,
          m         = parameter_current$m[i]
        )
        
      }
      
      # Generate values and center
      
      myths_t1 <- rbinom(n_myths, scale_points, myths_p) - scale_param
      
      # Store values
      
      myth_data[i, 1:n_myths] <- myths_t1
      
    }
    
    # Store relevant parameters
    
    myth_data$case         <- paste(g, k, sep = "_")
    myth_data$connectivity <- parameter_current$connectivity[g]
    myth_data$m            <- parameter_current$m
    myth_data$trend        <- parameter_current$trend
    
    # Print data (so the loop stores and combines them)
    
    myth_data
    
  }
  
}

## Clean up simulated data

sim_data_2 <- sim_data_2 %>% 
  group_by(case) %>% 
  mutate(
    t = 1:n()
  ) %>% 
  ungroup() %>% 
  relocate(
    case, t,
    .before = V1
  )

sim_data_2$rma_sum <- rowSums(select(sim_data_2, starts_with("V")))

# Visualization

rma_trajectories_2 <- 
  ggplot(sim_data_2,
         aes(
           y = rma_sum,
           x = t,
           group = case
         )) +
  facet_grid(trend ~ connectivity) +
  geom_line(
    alpha = .05
  ) +
  geom_hline(
    yintercept = n_myths * -scale_param,
    linetype   = "dotted"
  ) +
  scale_y_continuous(
    limits = c(n_myths * -scale_param, n_myths * scale_param)
  ) +
  scale_x_continuous(
    breaks = seq(0, nrow(myth_data), 10)
  ) +
  labs(
    y = "Sum Score",
    x = "Time"
  ) +
  theme_classic()
