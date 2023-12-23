# Formal Model of Rape Myth Acceptance

- [Formal Model](#formal-model)
- [Simulation 1: Variations of Connectivity and
  Motivation](#simulation-1-variations-of-connectivity-and-motivation)
  - [(In)stability Over Time](#instability-over-time)
    - [Sum Scores](#sum-scores)
    - [Item Ratings](#item-ratings)
- [Simulation 2: Changes of Motivation Over
  Time](#simulation-2-changes-of-motivation-over-time)

# Formal Model

This model draws considerable inspiration from Cramer et al (2016,
10.1371/journal.pone.0167490).

Let us assume that a person’s expression of a given myth statement can
take some number of values $k$, where lower values correspond to
disagreement with the myth, higher values correspond to acceptance of
the myth, and the central value (i.e., the median $c$ of the values 1
through $k$) corresponds to a neutral position toward the myth (e.g.,
“neither agree nor disagree”). We model acceptance of myth $i$ at time
$t$ as a value $x$ sampled from a binomial distribution, with $k - 1$
trials with probability $p$ of each trial taking the value 1, centered
such that the median value of 1 through $k$ is 0. The following equation
describes this assumption:

$$
x^t_i = B(k - 1, p^t_i) - c
$$

The probability $p$ for myth $i$ at time $t$ is assumed to result from a
logistic function:

$$
p^t_i = \frac{1}{1 + e^{b_i - A^t_i}}
$$

Here, $b$ represents the general tendency for the myth $i$ to be
expressed, and $A$ is the level of activation currently directed toward
this myth. Let us assume that a myth receives activation (or
deactivation) from two sources: (1) the values at the previous time
point $t - 1$ of adjacent myths (i.e., myths connected by an edge in the
network model) weighted by the strength of the connection $W_{ij}$. The
activation function is defined as follows:

$$
A^t_i = \sum_{j = 1}^J{W_{ij}x^{t-1}_j + m^t}
$$

Values for $b$ can be estimated from empirical means standardized by the
number of scale points (i.e., $\frac{\bar{X}}{k}$) for rape myth
acceptance using a logit transformation:

$$
b_i = -log(\frac{\frac{\bar{X}}{k}}{1 - \frac{\bar{X}}{k}})
$$

Values for $W$ can be estimated from the empirical edge weights
$r_{ij}$, converted from $r$ to log odds and scaled by $k - c$, such
that the maximum amount of activation and deactivation is conferred by
maximum and minimum values respectively:

$$
W_{ij} = \frac{2r_{ij}}{\sqrt{1 - 2r_{ij}}} \times \frac{\sqrt{3}}{\pi} \times \frac{1}{k - c}
$$

# Simulation 1: Variations of Connectivity and Motivation

I used the data from Łyś et al (2023) to estimate $b$ and $W$ values.

The first simulation based on the proposed model varied the level of
network connectivity by multiplying the weights by 0.75, 1.00, or 1.25
and the level of motivation from -0.45 to 0.45 in increments of .15. For
each combination of connectivity and motivation, I simulated 200 people
over 50 time points. Each person’s starting values were set by sampling
from binomial distributions using the baseline $b$ values.

The results of this simulation are visualized below.

``` r
knitr::include_graphics("figures/rma-model_simulation-01.png")
```

![](figures/rma-model_simulation-01.png)

## (In)stability Over Time

In the following analyses, change over time is measured using the
standardized deviation of each person’s sum scores or of item-level
ratings across time.

### Sum Scores

Below, we can see that under most conditions, the model reproduces the
empirically observed positive correlation between change over time and
sum scores. However, under conditions of higher motivation, especially
with high connectivity, the correlation is reduced or eliminated,
apparently due to the appearance of a set of people with persistently
high sum scores.

``` r
knitr::include_graphics("figures/rma-model_sum-change.png")
```

![](figures/rma-model_sum-change.png)

``` r
knitr::kable(sim_1_sum_cor)
```

| connectivity |     m |        cor |
|-------------:|------:|-----------:|
|         0.75 | -0.45 |  0.0784121 |
|         0.75 | -0.30 |  0.0927942 |
|         0.75 | -0.15 |  0.0571189 |
|         0.75 |  0.00 |  0.1230648 |
|         0.75 |  0.15 |  0.1908613 |
|         0.75 |  0.30 |  0.1987708 |
|         0.75 |  0.45 | -0.1103456 |
|         1.00 | -0.45 |  0.1275827 |
|         1.00 | -0.30 |  0.1658570 |
|         1.00 | -0.15 |  0.1622492 |
|         1.00 |  0.00 |  0.2254914 |
|         1.00 |  0.15 |  0.3286546 |
|         1.00 |  0.30 |  0.0853203 |
|         1.00 |  0.45 |  0.3991959 |
|         1.25 | -0.45 |  0.1192379 |
|         1.25 | -0.30 |  0.1548560 |
|         1.25 | -0.15 |  0.2372724 |
|         1.25 |  0.00 |  0.3866163 |
|         1.25 |  0.15 |  0.1880997 |
|         1.25 |  0.30 | -0.1250111 |
|         1.25 |  0.45 |  0.3564732 |

``` r
mean(sim_1_sum_cor$cor)
```

    [1] 0.163932

### Item Ratings

As we can see below, under most conditions, the model reproduces the
empirically observed positive correlation between the overall item mean
and change of ratings over time. However, at high levels of motivation,
we see that the relationship is more complicated: When items have means
greater than the midpoint, we wee that change over time decreases.

``` r
knitr::include_graphics("figures/rma-model_item-change.png")
```

![](figures/rma-model_item-change.png)

``` r
knitr::kable(sim_1_item_cor)
```

| connectivity |     m |  item_cor |
|-------------:|------:|----------:|
|         0.75 | -0.45 | 0.9799403 |
|         0.75 | -0.30 | 0.9762207 |
|         0.75 | -0.15 | 0.9652233 |
|         0.75 |  0.00 | 0.9326858 |
|         0.75 |  0.15 | 0.8288791 |
|         0.75 |  0.30 | 0.5835570 |
|         0.75 |  0.45 | 0.1099353 |
|         1.00 | -0.45 | 0.9774721 |
|         1.00 | -0.30 | 0.9758757 |
|         1.00 | -0.15 | 0.9778440 |
|         1.00 |  0.00 | 0.9649483 |
|         1.00 |  0.15 | 0.8890770 |
|         1.00 |  0.30 | 0.6190190 |
|         1.00 |  0.45 | 0.3860054 |
|         1.25 | -0.45 | 0.9728828 |
|         1.25 | -0.30 | 0.9710721 |
|         1.25 | -0.15 | 0.9687363 |
|         1.25 |  0.00 | 0.9400081 |
|         1.25 |  0.15 | 0.9077352 |
|         1.25 |  0.30 | 0.8362952 |
|         1.25 |  0.45 | 0.5760122 |

``` r
mean(sim_1_item_cor$item_cor)
```

    [1] 0.8256869

# Simulation 2: Changes of Motivation Over Time

In this simulation, I varied the network connectivity at the same levels
as the first simulation and varied motivation across time in three
different ways: (1) rising over time from -0.45 to 0.45, (2) falling
over time from 0.45 to -0.45, and (3) continuously set at 0.30 but
sinking momentarily to -1.00 at $t = 25$.

The results of this simulation are displayed below.

``` r
knitr::include_graphics("figures/rma-model_simulation-02.png")
```

![](figures/rma-model_simulation-02.png)
