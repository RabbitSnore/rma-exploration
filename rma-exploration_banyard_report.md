Banyard et al (2008) - Re-analysis
================

- <a href="#change-over-time" id="toc-change-over-time">Change Over
  Time</a>
  - <a href="#sum-score-across-time" id="toc-sum-score-across-time">Sum
    Score Across Time</a>
  - <a href="#item-means-across-time" id="toc-item-means-across-time">Item
    Means Across Time</a>
  - <a href="#item-level-change-for-each-participant"
    id="toc-item-level-change-for-each-participant">Item-Level Change for
    Each Participant</a>
  - <a href="#relationship-between-scores-and-change-over-time"
    id="toc-relationship-between-scores-and-change-over-time">Relationship
    Between Scores and Change Over Time</a>
    - <a href="#sum-score-and-total-absolute-item-level-change"
      id="toc-sum-score-and-total-absolute-item-level-change">Sum Score and
      Total Absolute Item-Level Change</a>
    - <a href="#sum-score-and-sum-score-change"
      id="toc-sum-score-and-sum-score-change">Sum Score and Sum Score
      Change</a>
    - <a href="#item-level-mean-by-mean-absolute-change-in-item-agreement"
      id="toc-item-level-mean-by-mean-absolute-change-in-item-agreement">Item-Level
      Mean by Mean Absolute Change in Item Agreement</a>
    - <a href="#visualization" id="toc-visualization">Visualization</a>

# Change Over Time

## Sum Score Across Time

``` r
banyard_sum_icc
```

    # ICC by Group

    Group |   ICC
    -------------
    ID    | 0.658

## Item Means Across Time

``` r
banyard_item_icc
```

    # ICC by Group

    Group |   ICC
    -------------
    item  | 0.873

## Item-Level Change for Each Participant

``` r
knitr::include_graphics("./figures/banyard_item-change.png")
```

![](./figures/banyard_item-change.png)

## Relationship Between Scores and Change Over Time

### Sum Score and Total Absolute Item-Level Change

``` r
banyard_sum_change_cor
```


        Pearson's product-moment correlation

    data:  banyard_wide$irma_sum and banyard_wide$change_abs_total
    t = 21.8, df = 763, p-value <0.0000000000000002
    alternative hypothesis: true correlation is not equal to 0
    95 percent confidence interval:
     0.57339 0.66098
    sample estimates:
        cor 
    0.61911 

### Sum Score and Sum Score Change

``` r
banyard_score_change_abs_cor
```


        Pearson's product-moment correlation

    data:  banyard_wide$irma_sum and banyard_wide$change_sum_abs_all
    t = 12.2, df = 763, p-value <0.0000000000000002
    alternative hypothesis: true correlation is not equal to 0
    95 percent confidence interval:
     0.34165 0.46052
    sample estimates:
        cor 
    0.40278 

### Item-Level Mean by Mean Absolute Change in Item Agreement

``` r
banyard_change_by_item_cor
```


        Pearson's product-moment correlation

    data:  banyard_item_long$rma and banyard_item_long$mean_change
    t = 16.9, df = 49, p-value <0.0000000000000002
    alternative hypothesis: true correlation is not equal to 0
    95 percent confidence interval:
     0.86996 0.95613
    sample estimates:
        cor 
    0.92402 

### Visualization

``` r
knitr::include_graphics("./figures/banyard_time-change.png")
```

![](./figures/banyard_time-change.png)
