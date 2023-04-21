Nyúl & Kende (2021) - Network Re-analysis
================

- <a href="#network-analysis" id="toc-network-analysis">Network
  Analysis</a>
  - <a href="#study-1" id="toc-study-1">Study 1</a>
    - <a href="#fit-indices" id="toc-fit-indices">Fit Indices</a>
    - <a href="#parameter-estimates" id="toc-parameter-estimates">Parameter
      Estimates</a>
    - <a href="#network-figures" id="toc-network-figures">Network Figures</a>
  - <a href="#study-2" id="toc-study-2">Study 2</a>
    - <a href="#fit-indices-1" id="toc-fit-indices-1">Fit Indices</a>
    - <a href="#parameter-estimates-1"
      id="toc-parameter-estimates-1">Parameter Estimates</a>
    - <a href="#network-figures-1" id="toc-network-figures-1">Network
      Figures</a>
- <a href="#connectivity-hypothesis"
  id="toc-connectivity-hypothesis">Connectivity Hypothesis</a>
  - <a href="#study-1-1" id="toc-study-1-1">Study 1</a>
    - <a href="#low-asi-scores" id="toc-low-asi-scores">Low ASI Scores</a>
    - <a href="#moderate-asi-scores" id="toc-moderate-asi-scores">Moderate ASI
      Scores</a>
    - <a href="#high-asi-scores" id="toc-high-asi-scores">High ASI Scores</a>
  - <a href="#study-2-1" id="toc-study-2-1">Study 2</a>
    - <a href="#low-asi-scores-1" id="toc-low-asi-scores-1">Low ASI Scores</a>
    - <a href="#moderate-asi-scores-1" id="toc-moderate-asi-scores-1">Moderate
      ASI Scores</a>
    - <a href="#high-asi-scores-1" id="toc-high-asi-scores-1">High ASI
      Scores</a>

# Network Analysis

## Study 1

### Fit Indices

``` r
network_fit_ind_full_1 %>% 
  mutate(across(where(is.numeric), round, 6))
```

    Warning: There was 1 warning in `mutate()`.
    ℹ In argument: `across(where(is.numeric), round, 6)`.
    Caused by warning:
    ! The `...` argument of `across()` is deprecated as of dplyr 1.1.0.
    Supply arguments directly to `.fns` through an anonymous function instead.

      # Previously
      across(a:b, mean, na.rm = TRUE)

      # Now
      across(a:b, \(x) mean(x, na.rm = TRUE))

                                Measure         Value
    logl                           logl -22062.528565
    unrestricted.logl unrestricted.logl -21983.670123
    baseline.logl         baseline.logl -25454.729151
    nvar                           nvar     18.000000
    nobs                           nobs    189.000000
    npar                           npar     76.000000
    df                               df    113.000000
    objective                 objective     25.207588
    chisq                         chisq    157.716884
    pvalue                       pvalue      0.003503
    baseline.chisq       baseline.chisq   6942.118056
    baseline.df             baseline.df    153.000000
    baseline.pvalue     baseline.pvalue      0.000000
    nfi                             nfi      0.977281
    pnfi                           pnfi      0.721783
    tli                             tli      0.991082
    nnfi                           nnfi      0.991082
    rfi                             rfi      0.969239
    ifi                             ifi      0.993452
    rni                             rni      0.993413
    cfi                             cfi      0.993413
    rmsea                         rmsea      0.022864
    rmsea.ci.lower       rmsea.ci.lower      0.013497
    rmsea.ci.upper       rmsea.ci.upper      0.030940
    rmsea.pvalue           rmsea.pvalue      1.000000
    aic.ll                       aic.ll  44277.057129
    aic.ll2                     aic.ll2  44294.268894
    aic.x                         aic.x    -68.283116
    aic.x2                       aic.x2    309.716884
    bic                             bic  44628.888736
    bic2                           bic2  44387.557173
    ebic.25                     ebic.25  44848.556990
    ebic.5                       ebic.5  45068.225244
    ebic.75                     ebic.75  45243.959847
    ebic1                         ebic1  45507.561751

### Parameter Estimates

``` r
network_pars_full_1 %>% 
  mutate(across(where(is.numeric), round, 3))
```

           var1 var1_id  op    var2 var2_id   est std    se     p se_boot p_boot
    1    nemes1       1  ~1    <NA>      NA 2.801  NA 0.073 0.000      NA     NA
    2    nemes2       2  ~1    <NA>      NA 2.987  NA 0.073 0.000      NA     NA
    3    nemes3       3  ~1    <NA>      NA 2.522  NA 0.066 0.000      NA     NA
    4    nemes4       4  ~1    <NA>      NA 4.614  NA 0.068 0.000      NA     NA
    5    nemes5       5  ~1    <NA>      NA 3.304  NA 0.068 0.000      NA     NA
    6    nemes6       6  ~1    <NA>      NA 3.514  NA 0.060 0.000      NA     NA
    7    nemes7       7  ~1    <NA>      NA 4.050  NA 0.071 0.000      NA     NA
    8    nemes8       8  ~1    <NA>      NA 2.095  NA 0.057 0.000      NA     NA
    9    nemes9       9  ~1    <NA>      NA 1.316  NA 0.031 0.000      NA     NA
    10  nemes10      10  ~1    <NA>      NA 1.945  NA 0.057 0.000      NA     NA
    11  nemes11      11  ~1    <NA>      NA 2.070  NA 0.058 0.000      NA     NA
    12  nemes12      12  ~1    <NA>      NA 2.001  NA 0.059 0.000      NA     NA
    13  nemes13      13  ~1    <NA>      NA 1.144  NA 0.022 0.000      NA     NA
    14  nemes14      14  ~1    <NA>      NA 2.551  NA 0.068 0.000      NA     NA
    15  nemes15      15  ~1    <NA>      NA 2.684  NA 0.057 0.000      NA     NA
    16  nemes16      16  ~1    <NA>      NA 2.511  NA 0.055 0.000      NA     NA
    17  nemes17      17  ~1    <NA>      NA 2.346  NA 0.053 0.000      NA     NA
    18  nemes18      18  ~1    <NA>      NA 3.063  NA 0.065 0.000      NA     NA
    19   nemes2       2  --  nemes1       1 0.453  NA 0.026 0.000      NA     NA
    20   nemes3       3  --  nemes1       1 0.220  NA 0.033 0.000      NA     NA
    21   nemes4       4  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    22   nemes5       5  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    23   nemes6       6  --  nemes1       1 0.087  NA 0.025 0.001      NA     NA
    24   nemes7       7  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    25   nemes8       8  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    26   nemes9       9  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    27  nemes10      10  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    28  nemes11      11  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    29  nemes12      12  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    30  nemes13      13  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    31  nemes14      14  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    32  nemes15      15  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    33  nemes16      16  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    34  nemes17      17  --  nemes1       1 0.078  NA 0.021 0.000      NA     NA
    35  nemes18      18  --  nemes1       1 0.093  NA 0.027 0.000      NA     NA
    36   nemes3       3  --  nemes2       2 0.359  NA 0.028 0.000      NA     NA
    37   nemes4       4  --  nemes2       2 0.343  NA 0.023 0.000      NA     NA
    38   nemes5       5  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    39   nemes6       6  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    40   nemes7       7  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    41   nemes8       8  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    42   nemes9       9  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    43  nemes10      10  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    44  nemes11      11  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    45  nemes12      12  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    46  nemes13      13  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    47  nemes14      14  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    48  nemes15      15  --  nemes2       2 0.068  NA 0.018 0.000      NA     NA
    49  nemes16      16  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    50  nemes17      17  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    51  nemes18      18  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    52   nemes4       4  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    53   nemes5       5  --  nemes3       3 0.117  NA 0.024 0.000      NA     NA
    54   nemes6       6  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    55   nemes7       7  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    56   nemes8       8  --  nemes3       3 0.066  NA 0.025 0.008      NA     NA
    57   nemes9       9  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    58  nemes10      10  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    59  nemes11      11  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    60  nemes12      12  --  nemes3       3 0.095  NA 0.020 0.000      NA     NA
    61  nemes13      13  --  nemes3       3 0.072  NA 0.024 0.002      NA     NA
    62  nemes14      14  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    63  nemes15      15  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    64  nemes16      16  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    65  nemes17      17  --  nemes3       3 0.065  NA 0.021 0.002      NA     NA
    66  nemes18      18  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    67   nemes5       5  --  nemes4       4 0.132  NA 0.028 0.000      NA     NA
    68   nemes6       6  --  nemes4       4 0.138  NA 0.031 0.000      NA     NA
    69   nemes7       7  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    70   nemes8       8  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    71   nemes9       9  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    72  nemes10      10  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    73  nemes11      11  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    74  nemes12      12  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    75  nemes13      13  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    76  nemes14      14  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    77  nemes15      15  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    78  nemes16      16  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    79  nemes17      17  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    80  nemes18      18  --  nemes4       4 0.146  NA 0.029 0.000      NA     NA
    81   nemes6       6  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    82   nemes7       7  --  nemes5       5 0.439  NA 0.028 0.000      NA     NA
    83   nemes8       8  --  nemes5       5 0.128  NA 0.033 0.000      NA     NA
    84   nemes9       9  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    85  nemes10      10  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    86  nemes11      11  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    87  nemes12      12  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    88  nemes13      13  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    89  nemes14      14  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    90  nemes15      15  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    91  nemes16      16  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    92  nemes17      17  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    93  nemes18      18  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    94   nemes7       7  --  nemes6       6 0.217  NA 0.030 0.000      NA     NA
    95   nemes8       8  --  nemes6       6 0.141  NA 0.033 0.000      NA     NA
    96   nemes9       9  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    97  nemes10      10  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    98  nemes11      11  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    99  nemes12      12  --  nemes6       6 0.066  NA 0.023 0.003      NA     NA
    100 nemes13      13  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    101 nemes14      14  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    102 nemes15      15  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    103 nemes16      16  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    104 nemes17      17  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    105 nemes18      18  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    106  nemes8       8  --  nemes7       7 0.137  NA 0.034 0.000      NA     NA
    107  nemes9       9  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    108 nemes10      10  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    109 nemes11      11  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    110 nemes12      12  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    111 nemes13      13  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    112 nemes14      14  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    113 nemes15      15  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    114 nemes16      16  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    115 nemes17      17  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    116 nemes18      18  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    117  nemes9       9  --  nemes8       8 0.120  NA 0.031 0.000      NA     NA
    118 nemes10      10  --  nemes8       8 0.139  NA 0.030 0.000      NA     NA
    119 nemes11      11  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    120 nemes12      12  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    121 nemes13      13  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    122 nemes14      14  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    123 nemes15      15  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    124 nemes16      16  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    125 nemes17      17  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    126 nemes18      18  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    127 nemes10      10  --  nemes9       9 0.298  NA 0.027 0.000      NA     NA
    128 nemes11      11  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    129 nemes12      12  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    130 nemes13      13  --  nemes9       9 0.379  NA 0.029 0.000      NA     NA
    131 nemes14      14  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    132 nemes15      15  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    133 nemes16      16  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    134 nemes17      17  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    135 nemes18      18  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    136 nemes11      11  -- nemes10      10 0.241  NA 0.024 0.000      NA     NA
    137 nemes12      12  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    138 nemes13      13  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    139 nemes14      14  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    140 nemes15      15  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    141 nemes16      16  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    142 nemes17      17  -- nemes10      10 0.144  NA 0.020 0.000      NA     NA
    143 nemes18      18  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    144 nemes12      12  -- nemes11      11 0.600  NA 0.021 0.000      NA     NA
    145 nemes13      13  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    146 nemes14      14  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    147 nemes15      15  -- nemes11      11 0.090  NA 0.020 0.000      NA     NA
    148 nemes16      16  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    149 nemes17      17  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    150 nemes18      18  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    151 nemes13      13  -- nemes12      12 0.136  NA 0.023 0.000      NA     NA
    152 nemes14      14  -- nemes12      12 0.227  NA 0.025 0.000      NA     NA
    153 nemes15      15  -- nemes12      12 0.000  NA    NA    NA      NA     NA
    154 nemes16      16  -- nemes12      12 0.000  NA    NA    NA      NA     NA
    155 nemes17      17  -- nemes12      12 0.061  NA 0.019 0.001      NA     NA
    156 nemes18      18  -- nemes12      12 0.000  NA    NA    NA      NA     NA
    157 nemes14      14  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    158 nemes15      15  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    159 nemes16      16  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    160 nemes17      17  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    161 nemes18      18  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    162 nemes15      15  -- nemes14      14 0.147  NA 0.025 0.000      NA     NA
    163 nemes16      16  -- nemes14      14 0.000  NA    NA    NA      NA     NA
    164 nemes17      17  -- nemes14      14 0.000  NA    NA    NA      NA     NA
    165 nemes18      18  -- nemes14      14 0.097  NA 0.032 0.003      NA     NA
    166 nemes16      16  -- nemes15      15 0.360  NA 0.030 0.000      NA     NA
    167 nemes17      17  -- nemes15      15 0.309  NA 0.030 0.000      NA     NA
    168 nemes18      18  -- nemes15      15 0.153  NA 0.032 0.000      NA     NA
    169 nemes17      17  -- nemes16      16 0.455  NA 0.027 0.000      NA     NA
    170 nemes18      18  -- nemes16      16 0.000  NA    NA    NA      NA     NA
    171 nemes18      18  -- nemes17      17 0.159  NA 0.030 0.000      NA     NA
    172  nemes1       1 ~/~  nemes1       1 1.215  NA 0.031 0.000      NA     NA
    173  nemes2       2 ~/~  nemes2       2 1.066  NA 0.025 0.000      NA     NA
    174  nemes3       3 ~/~  nemes3       3 1.142  NA 0.029 0.000      NA     NA
    175  nemes4       4 ~/~  nemes4       4 1.405  NA 0.036 0.000      NA     NA
    176  nemes5       5 ~/~  nemes5       5 1.478  NA 0.037 0.000      NA     NA
    177  nemes6       6 ~/~  nemes6       6 1.431  NA 0.036 0.000      NA     NA
    178  nemes7       7 ~/~  nemes7       7 1.554  NA 0.040 0.000      NA     NA
    179  nemes8       8 ~/~  nemes8       8 1.357  NA 0.035 0.000      NA     NA
    180  nemes9       9 ~/~  nemes9       9 0.685  NA 0.017 0.000      NA     NA
    181 nemes10      10 ~/~ nemes10      10 1.186  NA 0.029 0.000      NA     NA
    182 nemes11      11 ~/~ nemes11      11 0.995  NA 0.025 0.000      NA     NA
    183 nemes12      12 ~/~ nemes12      12 0.984  NA 0.024 0.000      NA     NA
    184 nemes13      13 ~/~ nemes13      13 0.518  NA 0.013 0.000      NA     NA
    185 nemes14      14 ~/~ nemes14      14 1.589  NA 0.041 0.000      NA     NA
    186 nemes15      15 ~/~ nemes15      15 0.861  NA 0.021 0.000      NA     NA
    187 nemes16      16 ~/~ nemes16      16 0.850  NA 0.022 0.000      NA     NA
    188 nemes17      17 ~/~ nemes17      17 0.736  NA 0.018 0.000      NA     NA
    189 nemes18      18 ~/~ nemes18      18 1.387  NA 0.035 0.000      NA     NA
        matrix row col par      group group_id fixed    mi   pmi    epc mi_free
    1       mu   1   1   1 fullsample        1 FALSE 0.000 1.000  0.000      NA
    2       mu   2   1   2 fullsample        1 FALSE 0.000 1.000  0.000      NA
    3       mu   3   1   3 fullsample        1 FALSE 0.000 1.000  0.000      NA
    4       mu   4   1   4 fullsample        1 FALSE 0.000 1.000  0.000      NA
    5       mu   5   1   5 fullsample        1 FALSE 0.000 1.000  0.000      NA
    6       mu   6   1   6 fullsample        1 FALSE 0.000 1.000  0.000      NA
    7       mu   7   1   7 fullsample        1 FALSE 0.000 1.000  0.000      NA
    8       mu   8   1   8 fullsample        1 FALSE 0.000 1.000  0.000      NA
    9       mu   9   1   9 fullsample        1 FALSE 0.000 1.000  0.000      NA
    10      mu  10   1  10 fullsample        1 FALSE 0.000 1.000  0.000      NA
    11      mu  11   1  11 fullsample        1 FALSE 0.000 1.000  0.000      NA
    12      mu  12   1  12 fullsample        1 FALSE 0.000 1.000  0.000      NA
    13      mu  13   1  13 fullsample        1 FALSE 0.000 1.000  0.000      NA
    14      mu  14   1  14 fullsample        1 FALSE 0.000 1.000  0.000      NA
    15      mu  15   1  15 fullsample        1 FALSE 0.000 1.000  0.000      NA
    16      mu  16   1  16 fullsample        1 FALSE 0.000 1.000  0.000      NA
    17      mu  17   1  17 fullsample        1 FALSE 0.000 1.000  0.000      NA
    18      mu  18   1  18 fullsample        1 FALSE 0.000 1.000  0.000      NA
    19   omega   2   1  19 fullsample        1 FALSE 0.000 1.000  0.000      NA
    20   omega   3   1  20 fullsample        1 FALSE 0.000 1.000  0.000      NA
    21   omega   4   1   0 fullsample        1  TRUE 2.716 0.099  0.055      NA
    22   omega   5   1   0 fullsample        1  TRUE 0.072 0.789 -0.007      NA
    23   omega   6   1  21 fullsample        1 FALSE 0.000 1.000  0.000      NA
    24   omega   7   1   0 fullsample        1  TRUE 0.886 0.346 -0.021      NA
    25   omega   8   1   0 fullsample        1  TRUE 0.012 0.914  0.003      NA
    26   omega   9   1   0 fullsample        1  TRUE 0.009 0.925 -0.002      NA
    27   omega  10   1   0 fullsample        1  TRUE 4.246 0.039  0.047      NA
    28   omega  11   1   0 fullsample        1  TRUE 1.716 0.190  0.026      NA
    29   omega  12   1   0 fullsample        1  TRUE 3.183 0.074  0.040      NA
    30   omega  13   1   0 fullsample        1  TRUE 0.295 0.587 -0.015      NA
    31   omega  14   1   0 fullsample        1  TRUE 0.172 0.678  0.010      NA
    32   omega  15   1   0 fullsample        1  TRUE 0.081 0.776  0.008      NA
    33   omega  16   1   0 fullsample        1  TRUE 0.010 0.920  0.002      NA
    34   omega  17   1  22 fullsample        1 FALSE 0.000 1.000  0.000      NA
    35   omega  18   1  23 fullsample        1 FALSE 0.000 1.000  0.000      NA
    36   omega   3   2  24 fullsample        1 FALSE 0.000 1.000  0.000      NA
    37   omega   4   2  25 fullsample        1 FALSE 0.000 1.000  0.000      NA
    38   omega   5   2   0 fullsample        1  TRUE 1.703 0.192  0.035      NA
    39   omega   6   2   0 fullsample        1  TRUE 0.001 0.977 -0.001      NA
    40   omega   7   2   0 fullsample        1  TRUE 0.566 0.452  0.015      NA
    41   omega   8   2   0 fullsample        1  TRUE 0.093 0.760 -0.008      NA
    42   omega   9   2   0 fullsample        1  TRUE 0.200 0.655 -0.008      NA
    43   omega  10   2   0 fullsample        1  TRUE 3.992 0.046  0.040      NA
    44   omega  11   2   0 fullsample        1  TRUE 4.453 0.035  0.038      NA
    45   omega  12   2   0 fullsample        1  TRUE 5.144 0.023  0.047      NA
    46   omega  13   2   0 fullsample        1  TRUE 0.598 0.439 -0.020      NA
    47   omega  14   2   0 fullsample        1  TRUE 1.721 0.190  0.029      NA
    48   omega  15   2  26 fullsample        1 FALSE 0.000 1.000  0.000      NA
    49   omega  16   2   0 fullsample        1  TRUE 1.023 0.312  0.021      NA
    50   omega  17   2   0 fullsample        1  TRUE 0.005 0.941  0.002      NA
    51   omega  18   2   0 fullsample        1  TRUE 0.015 0.904 -0.004      NA
    52   omega   4   3   0 fullsample        1  TRUE 4.239 0.040  0.067      NA
    53   omega   5   3  27 fullsample        1 FALSE 0.000 1.000  0.000      NA
    54   omega   6   3   0 fullsample        1  TRUE 1.050 0.305  0.032      NA
    55   omega   7   3   0 fullsample        1  TRUE 1.195 0.274  0.027      NA
    56   omega   8   3  28 fullsample        1 FALSE 0.000 1.000  0.000      NA
    57   omega   9   3   0 fullsample        1  TRUE 0.000 0.992  0.000      NA
    58   omega  10   3   0 fullsample        1  TRUE 0.276 0.599  0.013      NA
    59   omega  11   3   0 fullsample        1  TRUE 0.299 0.584  0.014      NA
    60   omega  12   3  29 fullsample        1 FALSE 0.000 1.000  0.000      NA
    61   omega  13   3  30 fullsample        1 FALSE 0.000 1.000  0.000      NA
    62   omega  14   3   0 fullsample        1  TRUE 0.286 0.593 -0.014      NA
    63   omega  15   3   0 fullsample        1  TRUE 0.320 0.571  0.016      NA
    64   omega  16   3   0 fullsample        1  TRUE 0.015 0.901  0.003      NA
    65   omega  17   3  31 fullsample        1 FALSE 0.000 1.000  0.000      NA
    66   omega  18   3   0 fullsample        1  TRUE 0.568 0.451  0.024      NA
    67   omega   5   4  32 fullsample        1 FALSE 0.000 1.000  0.000      NA
    68   omega   6   4  33 fullsample        1 FALSE 0.000 1.000  0.000      NA
    69   omega   7   4   0 fullsample        1  TRUE 0.228 0.633 -0.014      NA
    70   omega   8   4   0 fullsample        1  TRUE 1.013 0.314 -0.031      NA
    71   omega   9   4   0 fullsample        1  TRUE 3.073 0.080 -0.043      NA
    72   omega  10   4   0 fullsample        1  TRUE 0.472 0.492  0.017      NA
    73   omega  11   4   0 fullsample        1  TRUE 2.326 0.127  0.032      NA
    74   omega  12   4   0 fullsample        1  TRUE 2.501 0.114  0.035      NA
    75   omega  13   4   0 fullsample        1  TRUE 6.079 0.014 -0.068      NA
    76   omega  14   4   0 fullsample        1  TRUE 2.221 0.136  0.042      NA
    77   omega  15   4   0 fullsample        1  TRUE 8.773 0.003  0.072      NA
    78   omega  16   4   0 fullsample        1  TRUE 1.971 0.160  0.030      NA
    79   omega  17   4   0 fullsample        1  TRUE 2.307 0.129  0.034      NA
    80   omega  18   4  34 fullsample        1 FALSE 0.000 1.000  0.000      NA
    81   omega   6   5   0 fullsample        1  TRUE 6.425 0.011  0.089      NA
    82   omega   7   5  35 fullsample        1 FALSE 0.000 1.000  0.000      NA
    83   omega   8   5  36 fullsample        1 FALSE 0.000 1.000  0.000      NA
    84   omega   9   5   0 fullsample        1  TRUE 0.516 0.473 -0.019      NA
    85   omega  10   5   0 fullsample        1  TRUE 0.333 0.564  0.015      NA
    86   omega  11   5   0 fullsample        1  TRUE 1.256 0.262  0.023      NA
    87   omega  12   5   0 fullsample        1  TRUE 0.050 0.823 -0.005      NA
    88   omega  13   5   0 fullsample        1  TRUE 1.072 0.301 -0.029      NA
    89   omega  14   5   0 fullsample        1  TRUE 1.674 0.196  0.035      NA
    90   omega  15   5   0 fullsample        1  TRUE 1.500 0.221  0.024      NA
    91   omega  16   5   0 fullsample        1  TRUE 0.570 0.450  0.015      NA
    92   omega  17   5   0 fullsample        1  TRUE 0.260 0.610  0.010      NA
    93   omega  18   5   0 fullsample        1  TRUE 1.543 0.214  0.034      NA
    94   omega   7   6  37 fullsample        1 FALSE 0.000 1.000  0.000      NA
    95   omega   8   6  38 fullsample        1 FALSE 0.000 1.000  0.000      NA
    96   omega   9   6   0 fullsample        1  TRUE 2.043 0.153 -0.042      NA
    97   omega  10   6   0 fullsample        1  TRUE 1.578 0.209  0.037      NA
    98   omega  11   6   0 fullsample        1  TRUE 0.672 0.412  0.026      NA
    99   omega  12   6  39 fullsample        1 FALSE 0.000 1.000  0.000      NA
    100  omega  13   6   0 fullsample        1  TRUE 0.102 0.750  0.010      NA
    101  omega  14   6   0 fullsample        1  TRUE 0.002 0.966  0.001      NA
    102  omega  15   6   0 fullsample        1  TRUE 3.832 0.050  0.045      NA
    103  omega  16   6   0 fullsample        1  TRUE 1.792 0.181  0.030      NA
    104  omega  17   6   0 fullsample        1  TRUE 3.405 0.065  0.041      NA
    105  omega  18   6   0 fullsample        1  TRUE 2.233 0.135  0.046      NA
    106  omega   8   7  40 fullsample        1 FALSE 0.000 1.000  0.000      NA
    107  omega   9   7   0 fullsample        1  TRUE 1.059 0.303 -0.027      NA
    108  omega  10   7   0 fullsample        1  TRUE 2.314 0.128 -0.039      NA
    109  omega  11   7   0 fullsample        1  TRUE 0.001 0.981  0.000      NA
    110  omega  12   7   0 fullsample        1  TRUE 0.644 0.422 -0.017      NA
    111  omega  13   7   0 fullsample        1  TRUE 1.263 0.261 -0.030      NA
    112  omega  14   7   0 fullsample        1  TRUE 0.060 0.806  0.006      NA
    113  omega  15   7   0 fullsample        1  TRUE 0.060 0.806  0.004      NA
    114  omega  16   7   0 fullsample        1  TRUE 0.261 0.610 -0.009      NA
    115  omega  17   7   0 fullsample        1  TRUE 0.097 0.756 -0.005      NA
    116  omega  18   7   0 fullsample        1  TRUE 0.479 0.489 -0.017      NA
    117  omega   9   8  41 fullsample        1 FALSE 0.000 1.000  0.000      NA
    118  omega  10   8  42 fullsample        1 FALSE 0.000 1.000  0.000      NA
    119  omega  11   8   0 fullsample        1  TRUE 2.634 0.105 -0.041      NA
    120  omega  12   8   0 fullsample        1  TRUE 4.181 0.041 -0.051      NA
    121  omega  13   8   0 fullsample        1  TRUE 1.583 0.208  0.042      NA
    122  omega  14   8   0 fullsample        1  TRUE 0.147 0.701 -0.011      NA
    123  omega  15   8   0 fullsample        1  TRUE 0.761 0.383  0.019      NA
    124  omega  16   8   0 fullsample        1  TRUE 0.391 0.532  0.014      NA
    125  omega  17   8   0 fullsample        1  TRUE 1.225 0.268  0.024      NA
    126  omega  18   8   0 fullsample        1  TRUE 1.405 0.236  0.034      NA
    127  omega  10   9  43 fullsample        1 FALSE 0.000 1.000  0.000      NA
    128  omega  11   9   0 fullsample        1  TRUE 2.238 0.135  0.037      NA
    129  omega  12   9   0 fullsample        1  TRUE 0.076 0.783 -0.007      NA
    130  omega  13   9  44 fullsample        1 FALSE 0.000 1.000  0.000      NA
    131  omega  14   9   0 fullsample        1  TRUE 1.021 0.312  0.028      NA
    132  omega  15   9   0 fullsample        1  TRUE 3.445 0.063  0.037      NA
    133  omega  16   9   0 fullsample        1  TRUE 4.279 0.039  0.041      NA
    134  omega  17   9   0 fullsample        1  TRUE 0.973 0.324  0.019      NA
    135  omega  18   9   0 fullsample        1  TRUE 0.906 0.341  0.024      NA
    136  omega  11  10  45 fullsample        1 FALSE 0.000 1.000  0.000      NA
    137  omega  12  10   0 fullsample        1  TRUE 0.042 0.837  0.006      NA
    138  omega  13  10   0 fullsample        1  TRUE 3.835 0.050  0.064      NA
    139  omega  14  10   0 fullsample        1  TRUE 1.814 0.178  0.041      NA
    140  omega  15  10   0 fullsample        1  TRUE 5.771 0.016  0.070      NA
    141  omega  16  10   0 fullsample        1  TRUE 1.191 0.275  0.032      NA
    142  omega  17  10  46 fullsample        1 FALSE 0.000 1.000  0.000      NA
    143  omega  18  10   0 fullsample        1  TRUE 0.270 0.603 -0.015      NA
    144  omega  12  11  47 fullsample        1 FALSE 0.000 1.000  0.000      NA
    145  omega  13  11   0 fullsample        1  TRUE 3.081 0.079  0.056      NA
    146  omega  14  11   0 fullsample        1  TRUE 6.609 0.010  0.088      NA
    147  omega  15  11  48 fullsample        1 FALSE 0.000 1.000  0.000      NA
    148  omega  16  11   0 fullsample        1  TRUE 0.003 0.957 -0.001      NA
    149  omega  17  11   0 fullsample        1  TRUE 2.052 0.152 -0.038      NA
    150  omega  18  11   0 fullsample        1  TRUE 2.589 0.108  0.041      NA
    151  omega  13  12  49 fullsample        1 FALSE 0.000 1.000  0.000      NA
    152  omega  14  12  50 fullsample        1 FALSE 0.000 1.000  0.000      NA
    153  omega  15  12   0 fullsample        1  TRUE 1.571 0.210 -0.035      NA
    154  omega  16  12   0 fullsample        1  TRUE 0.284 0.594  0.013      NA
    155  omega  17  12  51 fullsample        1 FALSE 0.000 1.000  0.000      NA
    156  omega  18  12   0 fullsample        1  TRUE 0.007 0.934  0.002      NA
    157  omega  14  13   0 fullsample        1  TRUE 1.368 0.242  0.037      NA
    158  omega  15  13   0 fullsample        1  TRUE 0.000 0.987  0.000      NA
    159  omega  16  13   0 fullsample        1  TRUE 0.077 0.782 -0.006      NA
    160  omega  17  13   0 fullsample        1  TRUE 0.494 0.482  0.015      NA
    161  omega  18  13   0 fullsample        1  TRUE 0.002 0.961  0.001      NA
    162  omega  15  14  52 fullsample        1 FALSE 0.000 1.000  0.000      NA
    163  omega  16  14   0 fullsample        1  TRUE 0.293 0.589  0.017      NA
    164  omega  17  14   0 fullsample        1  TRUE 0.716 0.397 -0.026      NA
    165  omega  18  14  53 fullsample        1 FALSE 0.000 1.000  0.000      NA
    166  omega  16  15  54 fullsample        1 FALSE 0.000 1.000  0.000      NA
    167  omega  17  15  55 fullsample        1 FALSE 0.000 1.000  0.000      NA
    168  omega  18  15  56 fullsample        1 FALSE 0.000 1.000  0.000      NA
    169  omega  17  16  57 fullsample        1 FALSE 0.000 1.000  0.000      NA
    170  omega  18  16   0 fullsample        1  TRUE 2.618 0.106  0.057      NA
    171  omega  18  17  58 fullsample        1 FALSE 0.000 1.000  0.000      NA
    172  delta   1   1  59 fullsample        1 FALSE 0.000 1.000  0.000      NA
    173  delta   2   2  60 fullsample        1 FALSE 0.000 1.000  0.000      NA
    174  delta   3   3  61 fullsample        1 FALSE 0.000 1.000  0.000      NA
    175  delta   4   4  62 fullsample        1 FALSE 0.000 1.000  0.000      NA
    176  delta   5   5  63 fullsample        1 FALSE 0.000 1.000  0.000      NA
    177  delta   6   6  64 fullsample        1 FALSE 0.000 1.000  0.000      NA
    178  delta   7   7  65 fullsample        1 FALSE 0.000 1.000  0.000      NA
    179  delta   8   8  66 fullsample        1 FALSE 0.000 1.000  0.000      NA
    180  delta   9   9  67 fullsample        1 FALSE 0.000 1.000  0.000      NA
    181  delta  10  10  68 fullsample        1 FALSE 0.000 1.000  0.000      NA
    182  delta  11  11  69 fullsample        1 FALSE 0.000 1.000  0.000      NA
    183  delta  12  12  70 fullsample        1 FALSE 0.000 1.000  0.000      NA
    184  delta  13  13  71 fullsample        1 FALSE 0.000 1.000  0.000      NA
    185  delta  14  14  72 fullsample        1 FALSE 0.000 1.000  0.000      NA
    186  delta  15  15  73 fullsample        1 FALSE 0.000 1.000  0.000      NA
    187  delta  16  16  74 fullsample        1 FALSE 0.000 1.000  0.000      NA
    188  delta  17  17  75 fullsample        1 FALSE 0.000 1.000  0.000      NA
    189  delta  18  18  76 fullsample        1 FALSE 0.000 1.000  0.000      NA
        pmi_free epc_free mi_equal pmi_equal epc_equal minimum maximum identified
    1         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    2         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    3         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    4         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    5         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    6         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    7         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    8         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    9         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    10        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    11        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    12        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    13        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    14        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    15        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    16        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    17        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    18        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    19        NA       NA       NA        NA        NA      -1       1      FALSE
    20        NA       NA       NA        NA        NA      -1       1      FALSE
    21        NA       NA       NA        NA        NA      -1       1      FALSE
    22        NA       NA       NA        NA        NA      -1       1      FALSE
    23        NA       NA       NA        NA        NA      -1       1      FALSE
    24        NA       NA       NA        NA        NA      -1       1      FALSE
    25        NA       NA       NA        NA        NA      -1       1      FALSE
    26        NA       NA       NA        NA        NA      -1       1      FALSE
    27        NA       NA       NA        NA        NA      -1       1      FALSE
    28        NA       NA       NA        NA        NA      -1       1      FALSE
    29        NA       NA       NA        NA        NA      -1       1      FALSE
    30        NA       NA       NA        NA        NA      -1       1      FALSE
    31        NA       NA       NA        NA        NA      -1       1      FALSE
    32        NA       NA       NA        NA        NA      -1       1      FALSE
    33        NA       NA       NA        NA        NA      -1       1      FALSE
    34        NA       NA       NA        NA        NA      -1       1      FALSE
    35        NA       NA       NA        NA        NA      -1       1      FALSE
    36        NA       NA       NA        NA        NA      -1       1      FALSE
    37        NA       NA       NA        NA        NA      -1       1      FALSE
    38        NA       NA       NA        NA        NA      -1       1      FALSE
    39        NA       NA       NA        NA        NA      -1       1      FALSE
    40        NA       NA       NA        NA        NA      -1       1      FALSE
    41        NA       NA       NA        NA        NA      -1       1      FALSE
    42        NA       NA       NA        NA        NA      -1       1      FALSE
    43        NA       NA       NA        NA        NA      -1       1      FALSE
    44        NA       NA       NA        NA        NA      -1       1      FALSE
    45        NA       NA       NA        NA        NA      -1       1      FALSE
    46        NA       NA       NA        NA        NA      -1       1      FALSE
    47        NA       NA       NA        NA        NA      -1       1      FALSE
    48        NA       NA       NA        NA        NA      -1       1      FALSE
    49        NA       NA       NA        NA        NA      -1       1      FALSE
    50        NA       NA       NA        NA        NA      -1       1      FALSE
    51        NA       NA       NA        NA        NA      -1       1      FALSE
    52        NA       NA       NA        NA        NA      -1       1      FALSE
    53        NA       NA       NA        NA        NA      -1       1      FALSE
    54        NA       NA       NA        NA        NA      -1       1      FALSE
    55        NA       NA       NA        NA        NA      -1       1      FALSE
    56        NA       NA       NA        NA        NA      -1       1      FALSE
    57        NA       NA       NA        NA        NA      -1       1      FALSE
    58        NA       NA       NA        NA        NA      -1       1      FALSE
    59        NA       NA       NA        NA        NA      -1       1      FALSE
    60        NA       NA       NA        NA        NA      -1       1      FALSE
    61        NA       NA       NA        NA        NA      -1       1      FALSE
    62        NA       NA       NA        NA        NA      -1       1      FALSE
    63        NA       NA       NA        NA        NA      -1       1      FALSE
    64        NA       NA       NA        NA        NA      -1       1      FALSE
    65        NA       NA       NA        NA        NA      -1       1      FALSE
    66        NA       NA       NA        NA        NA      -1       1      FALSE
    67        NA       NA       NA        NA        NA      -1       1      FALSE
    68        NA       NA       NA        NA        NA      -1       1      FALSE
    69        NA       NA       NA        NA        NA      -1       1      FALSE
    70        NA       NA       NA        NA        NA      -1       1      FALSE
    71        NA       NA       NA        NA        NA      -1       1      FALSE
    72        NA       NA       NA        NA        NA      -1       1      FALSE
    73        NA       NA       NA        NA        NA      -1       1      FALSE
    74        NA       NA       NA        NA        NA      -1       1      FALSE
    75        NA       NA       NA        NA        NA      -1       1      FALSE
    76        NA       NA       NA        NA        NA      -1       1      FALSE
    77        NA       NA       NA        NA        NA      -1       1      FALSE
    78        NA       NA       NA        NA        NA      -1       1      FALSE
    79        NA       NA       NA        NA        NA      -1       1      FALSE
    80        NA       NA       NA        NA        NA      -1       1      FALSE
    81        NA       NA       NA        NA        NA      -1       1      FALSE
    82        NA       NA       NA        NA        NA      -1       1      FALSE
    83        NA       NA       NA        NA        NA      -1       1      FALSE
    84        NA       NA       NA        NA        NA      -1       1      FALSE
    85        NA       NA       NA        NA        NA      -1       1      FALSE
    86        NA       NA       NA        NA        NA      -1       1      FALSE
    87        NA       NA       NA        NA        NA      -1       1      FALSE
    88        NA       NA       NA        NA        NA      -1       1      FALSE
    89        NA       NA       NA        NA        NA      -1       1      FALSE
    90        NA       NA       NA        NA        NA      -1       1      FALSE
    91        NA       NA       NA        NA        NA      -1       1      FALSE
    92        NA       NA       NA        NA        NA      -1       1      FALSE
    93        NA       NA       NA        NA        NA      -1       1      FALSE
    94        NA       NA       NA        NA        NA      -1       1      FALSE
    95        NA       NA       NA        NA        NA      -1       1      FALSE
    96        NA       NA       NA        NA        NA      -1       1      FALSE
    97        NA       NA       NA        NA        NA      -1       1      FALSE
    98        NA       NA       NA        NA        NA      -1       1      FALSE
    99        NA       NA       NA        NA        NA      -1       1      FALSE
    100       NA       NA       NA        NA        NA      -1       1      FALSE
    101       NA       NA       NA        NA        NA      -1       1      FALSE
    102       NA       NA       NA        NA        NA      -1       1      FALSE
    103       NA       NA       NA        NA        NA      -1       1      FALSE
    104       NA       NA       NA        NA        NA      -1       1      FALSE
    105       NA       NA       NA        NA        NA      -1       1      FALSE
    106       NA       NA       NA        NA        NA      -1       1      FALSE
    107       NA       NA       NA        NA        NA      -1       1      FALSE
    108       NA       NA       NA        NA        NA      -1       1      FALSE
    109       NA       NA       NA        NA        NA      -1       1      FALSE
    110       NA       NA       NA        NA        NA      -1       1      FALSE
    111       NA       NA       NA        NA        NA      -1       1      FALSE
    112       NA       NA       NA        NA        NA      -1       1      FALSE
    113       NA       NA       NA        NA        NA      -1       1      FALSE
    114       NA       NA       NA        NA        NA      -1       1      FALSE
    115       NA       NA       NA        NA        NA      -1       1      FALSE
    116       NA       NA       NA        NA        NA      -1       1      FALSE
    117       NA       NA       NA        NA        NA      -1       1      FALSE
    118       NA       NA       NA        NA        NA      -1       1      FALSE
    119       NA       NA       NA        NA        NA      -1       1      FALSE
    120       NA       NA       NA        NA        NA      -1       1      FALSE
    121       NA       NA       NA        NA        NA      -1       1      FALSE
    122       NA       NA       NA        NA        NA      -1       1      FALSE
    123       NA       NA       NA        NA        NA      -1       1      FALSE
    124       NA       NA       NA        NA        NA      -1       1      FALSE
    125       NA       NA       NA        NA        NA      -1       1      FALSE
    126       NA       NA       NA        NA        NA      -1       1      FALSE
    127       NA       NA       NA        NA        NA      -1       1      FALSE
    128       NA       NA       NA        NA        NA      -1       1      FALSE
    129       NA       NA       NA        NA        NA      -1       1      FALSE
    130       NA       NA       NA        NA        NA      -1       1      FALSE
    131       NA       NA       NA        NA        NA      -1       1      FALSE
    132       NA       NA       NA        NA        NA      -1       1      FALSE
    133       NA       NA       NA        NA        NA      -1       1      FALSE
    134       NA       NA       NA        NA        NA      -1       1      FALSE
    135       NA       NA       NA        NA        NA      -1       1      FALSE
    136       NA       NA       NA        NA        NA      -1       1      FALSE
    137       NA       NA       NA        NA        NA      -1       1      FALSE
    138       NA       NA       NA        NA        NA      -1       1      FALSE
    139       NA       NA       NA        NA        NA      -1       1      FALSE
    140       NA       NA       NA        NA        NA      -1       1      FALSE
    141       NA       NA       NA        NA        NA      -1       1      FALSE
    142       NA       NA       NA        NA        NA      -1       1      FALSE
    143       NA       NA       NA        NA        NA      -1       1      FALSE
    144       NA       NA       NA        NA        NA      -1       1      FALSE
    145       NA       NA       NA        NA        NA      -1       1      FALSE
    146       NA       NA       NA        NA        NA      -1       1      FALSE
    147       NA       NA       NA        NA        NA      -1       1      FALSE
    148       NA       NA       NA        NA        NA      -1       1      FALSE
    149       NA       NA       NA        NA        NA      -1       1      FALSE
    150       NA       NA       NA        NA        NA      -1       1      FALSE
    151       NA       NA       NA        NA        NA      -1       1      FALSE
    152       NA       NA       NA        NA        NA      -1       1      FALSE
    153       NA       NA       NA        NA        NA      -1       1      FALSE
    154       NA       NA       NA        NA        NA      -1       1      FALSE
    155       NA       NA       NA        NA        NA      -1       1      FALSE
    156       NA       NA       NA        NA        NA      -1       1      FALSE
    157       NA       NA       NA        NA        NA      -1       1      FALSE
    158       NA       NA       NA        NA        NA      -1       1      FALSE
    159       NA       NA       NA        NA        NA      -1       1      FALSE
    160       NA       NA       NA        NA        NA      -1       1      FALSE
    161       NA       NA       NA        NA        NA      -1       1      FALSE
    162       NA       NA       NA        NA        NA      -1       1      FALSE
    163       NA       NA       NA        NA        NA      -1       1      FALSE
    164       NA       NA       NA        NA        NA      -1       1      FALSE
    165       NA       NA       NA        NA        NA      -1       1      FALSE
    166       NA       NA       NA        NA        NA      -1       1      FALSE
    167       NA       NA       NA        NA        NA      -1       1      FALSE
    168       NA       NA       NA        NA        NA      -1       1      FALSE
    169       NA       NA       NA        NA        NA      -1       1      FALSE
    170       NA       NA       NA        NA        NA      -1       1      FALSE
    171       NA       NA       NA        NA        NA      -1       1      FALSE
    172       NA       NA       NA        NA        NA       0     Inf      FALSE
    173       NA       NA       NA        NA        NA       0     Inf      FALSE
    174       NA       NA       NA        NA        NA       0     Inf      FALSE
    175       NA       NA       NA        NA        NA       0     Inf      FALSE
    176       NA       NA       NA        NA        NA       0     Inf      FALSE
    177       NA       NA       NA        NA        NA       0     Inf      FALSE
    178       NA       NA       NA        NA        NA       0     Inf      FALSE
    179       NA       NA       NA        NA        NA       0     Inf      FALSE
    180       NA       NA       NA        NA        NA       0     Inf      FALSE
    181       NA       NA       NA        NA        NA       0     Inf      FALSE
    182       NA       NA       NA        NA        NA       0     Inf      FALSE
    183       NA       NA       NA        NA        NA       0     Inf      FALSE
    184       NA       NA       NA        NA        NA       0     Inf      FALSE
    185       NA       NA       NA        NA        NA       0     Inf      FALSE
    186       NA       NA       NA        NA        NA       0     Inf      FALSE
    187       NA       NA       NA        NA        NA       0     Inf      FALSE
    188       NA       NA       NA        NA        NA       0     Inf      FALSE
    189       NA       NA       NA        NA        NA       0     Inf      FALSE

### Network Figures

``` r
knitr::include_graphics("./figures/nyul_irma-network_study-1.png")
```

![](./figures/nyul_irma-network_study-1.png)

``` r
knitr::include_graphics("./figures/nyul_irma-network_study-1_walktrap.png")
```

![](./figures/nyul_irma-network_study-1_walktrap.png)

## Study 2

### Fit Indices

``` r
network_fit_ind_2 %>% 
  mutate(across(where(is.numeric), round, 6))
```

                                Measure         Value
    logl                           logl -32914.916171
    unrestricted.logl unrestricted.logl -32665.837472
    baseline.logl         baseline.logl -37054.903441
    nvar                           nvar     18.000000
    nobs                           nobs    189.000000
    npar                           npar     76.000000
    df                               df    113.000000
    objective                 objective     32.290440
    chisq                         chisq    498.157398
    pvalue                       pvalue      0.000000
    baseline.chisq       baseline.chisq   8778.131937
    baseline.df             baseline.df    153.000000
    baseline.pvalue     baseline.pvalue      0.000000
    nfi                             nfi      0.943250
    pnfi                           pnfi      0.696649
    tli                             tli      0.939538
    nnfi                           nnfi      0.939538
    rfi                             rfi      0.923162
    ifi                             ifi      0.955551
    rni                             rni      0.955345
    cfi                             cfi      0.955345
    rmsea                         rmsea      0.058179
    rmsea.ci.lower       rmsea.ci.lower      0.053010
    rmsea.ci.upper       rmsea.ci.upper      0.063450
    rmsea.pvalue           rmsea.pvalue      0.004905
    aic.ll                       aic.ll  65981.832342
    aic.ll2                     aic.ll2  65994.417289
    aic.x                         aic.x    272.157398
    aic.x2                       aic.x2    650.157398
    bic                             bic  66355.351890
    bic2                           bic2  66113.970593
    ebic.25                     ebic.25  66575.020144
    ebic.5                       ebic.5  66794.688397
    ebic.75                     ebic.75  66970.423000
    ebic1                         ebic1  67234.024905

### Parameter Estimates

``` r
network_pars_2 %>% 
  mutate(across(where(is.numeric), round, 3))
```

           var1 var1_id  op    var2 var2_id   est std    se     p se_boot p_boot
    1    nemes1       1  ~1    <NA>      NA 3.632  NA 0.068 0.000      NA     NA
    2    nemes2       2  ~1    <NA>      NA 3.807  NA 0.065 0.000      NA     NA
    3    nemes3       3  ~1    <NA>      NA 3.223  NA 0.062 0.000      NA     NA
    4    nemes4       4  ~1    <NA>      NA 5.258  NA 0.055 0.000      NA     NA
    5    nemes5       5  ~1    <NA>      NA 3.737  NA 0.066 0.000      NA     NA
    6    nemes6       6  ~1    <NA>      NA 3.857  NA 0.058 0.000      NA     NA
    7    nemes7       7  ~1    <NA>      NA 4.691  NA 0.063 0.000      NA     NA
    8    nemes8       8  ~1    <NA>      NA 2.556  NA 0.060 0.000      NA     NA
    9    nemes9       9  ~1    <NA>      NA 1.709  NA 0.044 0.000      NA     NA
    10  nemes10      10  ~1    <NA>      NA 2.717  NA 0.064 0.000      NA     NA
    11  nemes11      11  ~1    <NA>      NA 3.133  NA 0.064 0.000      NA     NA
    12  nemes12      12  ~1    <NA>      NA 2.970  NA 0.065 0.000      NA     NA
    13  nemes13      13  ~1    <NA>      NA 1.578  NA 0.040 0.000      NA     NA
    14  nemes14      14  ~1    <NA>      NA 3.410  NA 0.069 0.000      NA     NA
    15  nemes15      15  ~1    <NA>      NA 3.780  NA 0.058 0.000      NA     NA
    16  nemes16      16  ~1    <NA>      NA 3.636  NA 0.057 0.000      NA     NA
    17  nemes17      17  ~1    <NA>      NA 3.482  NA 0.058 0.000      NA     NA
    18  nemes18      18  ~1    <NA>      NA 3.117  NA 0.055 0.000      NA     NA
    19   nemes2       2  --  nemes1       1 0.408  NA 0.024 0.000      NA     NA
    20   nemes3       3  --  nemes1       1 0.172  NA 0.029 0.000      NA     NA
    21   nemes4       4  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    22   nemes5       5  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    23   nemes6       6  --  nemes1       1 0.068  NA 0.023 0.003      NA     NA
    24   nemes7       7  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    25   nemes8       8  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    26   nemes9       9  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    27  nemes10      10  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    28  nemes11      11  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    29  nemes12      12  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    30  nemes13      13  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    31  nemes14      14  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    32  nemes15      15  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    33  nemes16      16  --  nemes1       1 0.000  NA    NA    NA      NA     NA
    34  nemes17      17  --  nemes1       1 0.050  NA 0.021 0.016      NA     NA
    35  nemes18      18  --  nemes1       1 0.049  NA 0.025 0.049      NA     NA
    36   nemes3       3  --  nemes2       2 0.372  NA 0.024 0.000      NA     NA
    37   nemes4       4  --  nemes2       2 0.335  NA 0.021 0.000      NA     NA
    38   nemes5       5  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    39   nemes6       6  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    40   nemes7       7  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    41   nemes8       8  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    42   nemes9       9  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    43  nemes10      10  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    44  nemes11      11  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    45  nemes12      12  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    46  nemes13      13  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    47  nemes14      14  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    48  nemes15      15  --  nemes2       2 0.082  NA 0.016 0.000      NA     NA
    49  nemes16      16  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    50  nemes17      17  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    51  nemes18      18  --  nemes2       2 0.000  NA    NA    NA      NA     NA
    52   nemes4       4  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    53   nemes5       5  --  nemes3       3 0.082  NA 0.023 0.000      NA     NA
    54   nemes6       6  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    55   nemes7       7  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    56   nemes8       8  --  nemes3       3 0.052  NA 0.022 0.018      NA     NA
    57   nemes9       9  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    58  nemes10      10  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    59  nemes11      11  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    60  nemes12      12  --  nemes3       3 0.162  NA 0.019 0.000      NA     NA
    61  nemes13      13  --  nemes3       3 0.051  NA 0.022 0.021      NA     NA
    62  nemes14      14  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    63  nemes15      15  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    64  nemes16      16  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    65  nemes17      17  --  nemes3       3 0.057  NA 0.017 0.001      NA     NA
    66  nemes18      18  --  nemes3       3 0.000  NA    NA    NA      NA     NA
    67   nemes5       5  --  nemes4       4 0.103  NA 0.026 0.000      NA     NA
    68   nemes6       6  --  nemes4       4 0.132  NA 0.026 0.000      NA     NA
    69   nemes7       7  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    70   nemes8       8  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    71   nemes9       9  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    72  nemes10      10  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    73  nemes11      11  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    74  nemes12      12  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    75  nemes13      13  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    76  nemes14      14  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    77  nemes15      15  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    78  nemes16      16  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    79  nemes17      17  --  nemes4       4 0.000  NA    NA    NA      NA     NA
    80  nemes18      18  --  nemes4       4 0.052  NA 0.021 0.013      NA     NA
    81   nemes6       6  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    82   nemes7       7  --  nemes5       5 0.313  NA 0.027 0.000      NA     NA
    83   nemes8       8  --  nemes5       5 0.162  NA 0.028 0.000      NA     NA
    84   nemes9       9  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    85  nemes10      10  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    86  nemes11      11  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    87  nemes12      12  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    88  nemes13      13  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    89  nemes14      14  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    90  nemes15      15  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    91  nemes16      16  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    92  nemes17      17  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    93  nemes18      18  --  nemes5       5 0.000  NA    NA    NA      NA     NA
    94   nemes7       7  --  nemes6       6 0.320  NA 0.026 0.000      NA     NA
    95   nemes8       8  --  nemes6       6 0.188  NA 0.027 0.000      NA     NA
    96   nemes9       9  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    97  nemes10      10  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    98  nemes11      11  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    99  nemes12      12  --  nemes6       6 0.089  NA 0.019 0.000      NA     NA
    100 nemes13      13  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    101 nemes14      14  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    102 nemes15      15  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    103 nemes16      16  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    104 nemes17      17  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    105 nemes18      18  --  nemes6       6 0.000  NA    NA    NA      NA     NA
    106  nemes8       8  --  nemes7       7 0.043  NA 0.029 0.139      NA     NA
    107  nemes9       9  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    108 nemes10      10  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    109 nemes11      11  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    110 nemes12      12  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    111 nemes13      13  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    112 nemes14      14  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    113 nemes15      15  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    114 nemes16      16  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    115 nemes17      17  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    116 nemes18      18  --  nemes7       7 0.000  NA    NA    NA      NA     NA
    117  nemes9       9  --  nemes8       8 0.224  NA 0.026 0.000      NA     NA
    118 nemes10      10  --  nemes8       8 0.116  NA 0.027 0.000      NA     NA
    119 nemes11      11  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    120 nemes12      12  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    121 nemes13      13  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    122 nemes14      14  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    123 nemes15      15  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    124 nemes16      16  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    125 nemes17      17  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    126 nemes18      18  --  nemes8       8 0.000  NA    NA    NA      NA     NA
    127 nemes10      10  --  nemes9       9 0.328  NA 0.024 0.000      NA     NA
    128 nemes11      11  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    129 nemes12      12  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    130 nemes13      13  --  nemes9       9 0.411  NA 0.023 0.000      NA     NA
    131 nemes14      14  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    132 nemes15      15  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    133 nemes16      16  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    134 nemes17      17  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    135 nemes18      18  --  nemes9       9 0.000  NA    NA    NA      NA     NA
    136 nemes11      11  -- nemes10      10 0.206  NA 0.021 0.000      NA     NA
    137 nemes12      12  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    138 nemes13      13  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    139 nemes14      14  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    140 nemes15      15  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    141 nemes16      16  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    142 nemes17      17  -- nemes10      10 0.108  NA 0.016 0.000      NA     NA
    143 nemes18      18  -- nemes10      10 0.000  NA    NA    NA      NA     NA
    144 nemes12      12  -- nemes11      11 0.613  NA 0.018 0.000      NA     NA
    145 nemes13      13  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    146 nemes14      14  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    147 nemes15      15  -- nemes11      11 0.094  NA 0.017 0.000      NA     NA
    148 nemes16      16  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    149 nemes17      17  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    150 nemes18      18  -- nemes11      11 0.000  NA    NA    NA      NA     NA
    151 nemes13      13  -- nemes12      12 0.160  NA 0.020 0.000      NA     NA
    152 nemes14      14  -- nemes12      12 0.173  NA 0.021 0.000      NA     NA
    153 nemes15      15  -- nemes12      12 0.000  NA    NA    NA      NA     NA
    154 nemes16      16  -- nemes12      12 0.000  NA    NA    NA      NA     NA
    155 nemes17      17  -- nemes12      12 0.042  NA 0.015 0.006      NA     NA
    156 nemes18      18  -- nemes12      12 0.000  NA    NA    NA      NA     NA
    157 nemes14      14  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    158 nemes15      15  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    159 nemes16      16  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    160 nemes17      17  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    161 nemes18      18  -- nemes13      13 0.000  NA    NA    NA      NA     NA
    162 nemes15      15  -- nemes14      14 0.169  NA 0.024 0.000      NA     NA
    163 nemes16      16  -- nemes14      14 0.000  NA    NA    NA      NA     NA
    164 nemes17      17  -- nemes14      14 0.000  NA    NA    NA      NA     NA
    165 nemes18      18  -- nemes14      14 0.082  NA 0.027 0.002      NA     NA
    166 nemes16      16  -- nemes15      15 0.368  NA 0.026 0.000      NA     NA
    167 nemes17      17  -- nemes15      15 0.239  NA 0.026 0.000      NA     NA
    168 nemes18      18  -- nemes15      15 0.175  NA 0.027 0.000      NA     NA
    169 nemes17      17  -- nemes16      16 0.430  NA 0.023 0.000      NA     NA
    170 nemes18      18  -- nemes16      16 0.000  NA    NA    NA      NA     NA
    171 nemes18      18  -- nemes17      17 0.393  NA 0.023 0.000      NA     NA
    172  nemes1       1 ~/~  nemes1       1 1.548  NA 0.034 0.000      NA     NA
    173  nemes2       2 ~/~  nemes2       2 1.269  NA 0.027 0.000      NA     NA
    174  nemes3       3 ~/~  nemes3       3 1.358  NA 0.029 0.000      NA     NA
    175  nemes4       4 ~/~  nemes4       4 1.443  NA 0.032 0.000      NA     NA
    176  nemes5       5 ~/~  nemes5       5 1.827  NA 0.041 0.000      NA     NA
    177  nemes6       6 ~/~  nemes6       6 1.550  NA 0.034 0.000      NA     NA
    178  nemes7       7 ~/~  nemes7       7 1.723  NA 0.038 0.000      NA     NA
    179  nemes8       8 ~/~  nemes8       8 1.610  NA 0.035 0.000      NA     NA
    180  nemes9       9 ~/~  nemes9       9 1.048  NA 0.022 0.000      NA     NA
    181 nemes10      10 ~/~ nemes10      10 1.587  NA 0.034 0.000      NA     NA
    182 nemes11      11 ~/~ nemes11      11 1.257  NA 0.027 0.000      NA     NA
    183 nemes12      12 ~/~ nemes12      12 1.222  NA 0.025 0.000      NA     NA
    184 nemes13      13 ~/~ nemes13      13 1.022  NA 0.022 0.000      NA     NA
    185 nemes14      14 ~/~ nemes14      14 1.883  NA 0.042 0.000      NA     NA
    186 nemes15      15 ~/~ nemes15      15 1.017  NA 0.022 0.000      NA     NA
    187 nemes16      16 ~/~ nemes16      16 1.037  NA 0.023 0.000      NA     NA
    188 nemes17      17 ~/~ nemes17      17 0.915  NA 0.019 0.000      NA     NA
    189 nemes18      18 ~/~ nemes18      18 1.147  NA 0.025 0.000      NA     NA
        matrix row col par      group group_id fixed     mi   pmi    epc mi_free
    1       mu   1   1   1 fullsample        1 FALSE  0.000 1.000  0.000      NA
    2       mu   2   1   2 fullsample        1 FALSE  0.000 1.000  0.000      NA
    3       mu   3   1   3 fullsample        1 FALSE  0.000 1.000  0.000      NA
    4       mu   4   1   4 fullsample        1 FALSE  0.000 1.000  0.000      NA
    5       mu   5   1   5 fullsample        1 FALSE  0.000 1.000  0.000      NA
    6       mu   6   1   6 fullsample        1 FALSE  0.000 1.000  0.000      NA
    7       mu   7   1   7 fullsample        1 FALSE  0.000 1.000  0.000      NA
    8       mu   8   1   8 fullsample        1 FALSE  0.000 1.000  0.000      NA
    9       mu   9   1   9 fullsample        1 FALSE  0.000 1.000  0.000      NA
    10      mu  10   1  10 fullsample        1 FALSE  0.000 1.000  0.000      NA
    11      mu  11   1  11 fullsample        1 FALSE  0.000 1.000  0.000      NA
    12      mu  12   1  12 fullsample        1 FALSE  0.000 1.000  0.000      NA
    13      mu  13   1  13 fullsample        1 FALSE  0.000 1.000  0.000      NA
    14      mu  14   1  14 fullsample        1 FALSE  0.000 1.000  0.000      NA
    15      mu  15   1  15 fullsample        1 FALSE  0.000 1.000  0.000      NA
    16      mu  16   1  16 fullsample        1 FALSE  0.000 1.000  0.000      NA
    17      mu  17   1  17 fullsample        1 FALSE  0.000 1.000  0.000      NA
    18      mu  18   1  18 fullsample        1 FALSE  0.000 1.000  0.000      NA
    19   omega   2   1  19 fullsample        1 FALSE  0.000 0.999  0.000      NA
    20   omega   3   1  20 fullsample        1 FALSE  0.000 1.000  0.000      NA
    21   omega   4   1   0 fullsample        1  TRUE  6.412 0.011  0.077      NA
    22   omega   5   1   0 fullsample        1  TRUE  0.408 0.523 -0.017      NA
    23   omega   6   1  21 fullsample        1 FALSE  0.000 1.000  0.000      NA
    24   omega   7   1   0 fullsample        1  TRUE  5.762 0.016  0.055      NA
    25   omega   8   1   0 fullsample        1  TRUE  7.266 0.007  0.068      NA
    26   omega   9   1   0 fullsample        1  TRUE  4.027 0.045  0.039      NA
    27   omega  10   1   0 fullsample        1  TRUE 22.694 0.000  0.104      NA
    28   omega  11   1   0 fullsample        1  TRUE  9.889 0.002  0.060      NA
    29   omega  12   1   0 fullsample        1  TRUE  5.810 0.016  0.049      NA
    30   omega  13   1   0 fullsample        1  TRUE  0.478 0.490  0.016      NA
    31   omega  14   1   0 fullsample        1  TRUE  0.707 0.401  0.020      NA
    32   omega  15   1   0 fullsample        1  TRUE  0.072 0.788  0.007      NA
    33   omega  16   1   0 fullsample        1  TRUE  0.006 0.937 -0.002      NA
    34   omega  17   1  22 fullsample        1 FALSE  0.000 0.999  0.000      NA
    35   omega  18   1  23 fullsample        1 FALSE  0.000 0.999  0.000      NA
    36   omega   3   2  24 fullsample        1 FALSE  0.000 0.999  0.000      NA
    37   omega   4   2  25 fullsample        1 FALSE  0.000 0.999  0.000      NA
    38   omega   5   2   0 fullsample        1  TRUE  1.710 0.191  0.034      NA
    39   omega   6   2   0 fullsample        1  TRUE  9.082 0.003  0.078      NA
    40   omega   7   2   0 fullsample        1  TRUE  4.603 0.032  0.041      NA
    41   omega   8   2   0 fullsample        1  TRUE  5.541 0.019  0.055      NA
    42   omega   9   2   0 fullsample        1  TRUE  4.227 0.040  0.035      NA
    43   omega  10   2   0 fullsample        1  TRUE 19.879 0.000  0.084      NA
    44   omega  11   2   0 fullsample        1  TRUE 16.401 0.000  0.069      NA
    45   omega  12   2   0 fullsample        1  TRUE 19.978 0.000  0.084      NA
    46   omega  13   2   0 fullsample        1  TRUE  0.581 0.446  0.017      NA
    47   omega  14   2   0 fullsample        1  TRUE  0.021 0.885 -0.003      NA
    48   omega  15   2  26 fullsample        1 FALSE  0.000 0.998  0.000      NA
    49   omega  16   2   0 fullsample        1  TRUE  0.089 0.765 -0.006      NA
    50   omega  17   2   0 fullsample        1  TRUE  4.780 0.029  0.046      NA
    51   omega  18   2   0 fullsample        1  TRUE  0.755 0.385  0.021      NA
    52   omega   4   3   0 fullsample        1  TRUE  2.405 0.121  0.045      NA
    53   omega   5   3  27 fullsample        1 FALSE  0.000 1.000  0.000      NA
    54   omega   6   3   0 fullsample        1  TRUE  1.430 0.232  0.032      NA
    55   omega   7   3   0 fullsample        1  TRUE  1.405 0.236  0.026      NA
    56   omega   8   3  28 fullsample        1 FALSE  0.000 1.000  0.000      NA
    57   omega   9   3   0 fullsample        1  TRUE  5.699 0.017  0.052      NA
    58   omega  10   3   0 fullsample        1  TRUE 22.643 0.000  0.109      NA
    59   omega  11   3   0 fullsample        1  TRUE 16.562 0.000  0.100      NA
    60   omega  12   3  29 fullsample        1 FALSE  0.000 0.999  0.000      NA
    61   omega  13   3  30 fullsample        1 FALSE  0.000 0.999  0.000      NA
    62   omega  14   3   0 fullsample        1  TRUE  0.038 0.846 -0.005      NA
    63   omega  15   3   0 fullsample        1  TRUE  1.607 0.205 -0.031      NA
    64   omega  16   3   0 fullsample        1  TRUE  2.414 0.120 -0.035      NA
    65   omega  17   3  31 fullsample        1 FALSE  0.000 0.999  0.000      NA
    66   omega  18   3   0 fullsample        1  TRUE  1.965 0.161  0.038      NA
    67   omega   5   4  32 fullsample        1 FALSE  0.000 1.000  0.000      NA
    68   omega   6   4  33 fullsample        1 FALSE  0.000 1.000  0.000      NA
    69   omega   7   4   0 fullsample        1  TRUE  2.558 0.110  0.044      NA
    70   omega   8   4   0 fullsample        1  TRUE  2.512 0.113 -0.043      NA
    71   omega   9   4   0 fullsample        1  TRUE 11.563 0.001 -0.073      NA
    72   omega  10   4   0 fullsample        1  TRUE  0.378 0.539  0.014      NA
    73   omega  11   4   0 fullsample        1  TRUE  5.188 0.023  0.045      NA
    74   omega  12   4   0 fullsample        1  TRUE  0.472 0.492  0.014      NA
    75   omega  13   4   0 fullsample        1  TRUE 20.713 0.000 -0.109      NA
    76   omega  14   4   0 fullsample        1  TRUE  1.971 0.160  0.037      NA
    77   omega  15   4   0 fullsample        1  TRUE  7.191 0.007  0.062      NA
    78   omega  16   4   0 fullsample        1  TRUE  5.009 0.025  0.047      NA
    79   omega  17   4   0 fullsample        1  TRUE  9.476 0.002  0.067      NA
    80   omega  18   4  34 fullsample        1 FALSE  0.000 0.999  0.000      NA
    81   omega   6   5   0 fullsample        1  TRUE 46.759 0.000  0.210      NA
    82   omega   7   5  35 fullsample        1 FALSE  0.000 1.000  0.000      NA
    83   omega   8   5  36 fullsample        1 FALSE  0.000 1.000  0.000      NA
    84   omega   9   5   0 fullsample        1  TRUE  0.180 0.671 -0.010      NA
    85   omega  10   5   0 fullsample        1  TRUE  2.925 0.087  0.042      NA
    86   omega  11   5   0 fullsample        1  TRUE  8.738 0.003  0.059      NA
    87   omega  12   5   0 fullsample        1  TRUE  6.186 0.013  0.050      NA
    88   omega  13   5   0 fullsample        1  TRUE  1.951 0.163  0.035      NA
    89   omega  14   5   0 fullsample        1  TRUE  9.141 0.003  0.077      NA
    90   omega  15   5   0 fullsample        1  TRUE 10.141 0.001  0.057      NA
    91   omega  16   5   0 fullsample        1  TRUE  9.322 0.002  0.054      NA
    92   omega  17   5   0 fullsample        1  TRUE 11.959 0.001  0.056      NA
    93   omega  18   5   0 fullsample        1  TRUE  7.985 0.005  0.059      NA
    94   omega   7   6  37 fullsample        1 FALSE  0.000 1.000  0.000      NA
    95   omega   8   6  38 fullsample        1 FALSE  0.000 1.000  0.000      NA
    96   omega   9   6   0 fullsample        1  TRUE  1.872 0.171  0.033      NA
    97   omega  10   6   0 fullsample        1  TRUE  8.174 0.004  0.073      NA
    98   omega  11   6   0 fullsample        1  TRUE  6.824 0.009  0.070      NA
    99   omega  12   6  39 fullsample        1 FALSE  0.000 1.000  0.000      NA
    100  omega  13   6   0 fullsample        1  TRUE  5.314 0.021  0.058      NA
    101  omega  14   6   0 fullsample        1  TRUE  3.475 0.062  0.049      NA
    102  omega  15   6   0 fullsample        1  TRUE  8.184 0.004  0.053      NA
    103  omega  16   6   0 fullsample        1  TRUE  4.517 0.034  0.038      NA
    104  omega  17   6   0 fullsample        1  TRUE 12.957 0.000  0.061      NA
    105  omega  18   6   0 fullsample        1  TRUE 18.800 0.000  0.092      NA
    106  omega   8   7  40 fullsample        1 FALSE  0.000 1.000  0.000      NA
    107  omega   9   7   0 fullsample        1  TRUE  2.019 0.155 -0.033      NA
    108  omega  10   7   0 fullsample        1  TRUE  0.535 0.465  0.017      NA
    109  omega  11   7   0 fullsample        1  TRUE  3.326 0.068  0.034      NA
    110  omega  12   7   0 fullsample        1  TRUE  0.673 0.412  0.016      NA
    111  omega  13   7   0 fullsample        1  TRUE  0.257 0.612  0.012      NA
    112  omega  14   7   0 fullsample        1  TRUE  9.586 0.002  0.075      NA
    113  omega  15   7   0 fullsample        1  TRUE 12.941 0.000  0.058      NA
    114  omega  16   7   0 fullsample        1  TRUE  4.826 0.028  0.036      NA
    115  omega  17   7   0 fullsample        1  TRUE  9.310 0.002  0.045      NA
    116  omega  18   7   0 fullsample        1  TRUE  2.554 0.110  0.030      NA
    117  omega   9   8  41 fullsample        1 FALSE  0.000 1.000  0.000      NA
    118  omega  10   8  42 fullsample        1 FALSE  0.000 1.000  0.000      NA
    119  omega  11   8   0 fullsample        1  TRUE  1.146 0.284 -0.023      NA
    120  omega  12   8   0 fullsample        1  TRUE  0.206 0.650 -0.010      NA
    121  omega  13   8   0 fullsample        1  TRUE 20.168 0.000  0.129      NA
    122  omega  14   8   0 fullsample        1  TRUE  0.362 0.547 -0.015      NA
    123  omega  15   8   0 fullsample        1  TRUE  3.862 0.049  0.035      NA
    124  omega  16   8   0 fullsample        1  TRUE  3.210 0.073  0.032      NA
    125  omega  17   8   0 fullsample        1  TRUE  0.924 0.337  0.016      NA
    126  omega  18   8   0 fullsample        1  TRUE  7.700 0.006  0.057      NA
    127  omega  10   9  43 fullsample        1 FALSE  0.000 1.000  0.000      NA
    128  omega  11   9   0 fullsample        1  TRUE  0.233 0.629 -0.010      NA
    129  omega  12   9   0 fullsample        1  TRUE  0.006 0.940 -0.001      NA
    130  omega  13   9  44 fullsample        1 FALSE  0.000 1.000  0.000      NA
    131  omega  14   9   0 fullsample        1  TRUE  0.099 0.753 -0.007      NA
    132  omega  15   9   0 fullsample        1  TRUE  0.004 0.950 -0.001      NA
    133  omega  16   9   0 fullsample        1  TRUE  0.388 0.534  0.010      NA
    134  omega  17   9   0 fullsample        1  TRUE  0.422 0.516 -0.010      NA
    135  omega  18   9   0 fullsample        1  TRUE  6.297 0.012  0.046      NA
    136  omega  11  10  45 fullsample        1 FALSE  0.000 0.999  0.000      NA
    137  omega  12  10   0 fullsample        1  TRUE  9.354 0.002  0.082      NA
    138  omega  13  10   0 fullsample        1  TRUE  1.284 0.257  0.033      NA
    139  omega  14  10   0 fullsample        1  TRUE  9.551 0.002  0.081      NA
    140  omega  15  10   0 fullsample        1  TRUE  3.824 0.051  0.048      NA
    141  omega  16  10   0 fullsample        1  TRUE  4.438 0.035  0.052      NA
    142  omega  17  10  46 fullsample        1 FALSE  0.000 1.000  0.000      NA
    143  omega  18  10   0 fullsample        1  TRUE 25.071 0.000  0.130      NA
    144  omega  12  11  47 fullsample        1 FALSE  0.000 0.999  0.000      NA
    145  omega  13  11   0 fullsample        1  TRUE  0.475 0.491  0.019      NA
    146  omega  14  11   0 fullsample        1  TRUE 17.810 0.000  0.126      NA
    147  omega  15  11  48 fullsample        1 FALSE  0.000 0.998  0.000      NA
    148  omega  16  11   0 fullsample        1  TRUE  8.379 0.004  0.059      NA
    149  omega  17  11   0 fullsample        1  TRUE 12.542 0.000  0.077      NA
    150  omega  18  11   0 fullsample        1  TRUE 16.110 0.000  0.084      NA
    151  omega  13  12  49 fullsample        1 FALSE  0.000 1.000  0.000      NA
    152  omega  14  12  50 fullsample        1 FALSE  0.000 0.999  0.000      NA
    153  omega  15  12   0 fullsample        1  TRUE  0.044 0.833  0.005      NA
    154  omega  16  12   0 fullsample        1  TRUE  2.771 0.096  0.034      NA
    155  omega  17  12  51 fullsample        1 FALSE  0.000 1.000  0.000      NA
    156  omega  18  12   0 fullsample        1  TRUE  7.671 0.006  0.060      NA
    157  omega  14  13   0 fullsample        1  TRUE  7.530 0.006  0.073      NA
    158  omega  15  13   0 fullsample        1  TRUE  3.321 0.068  0.033      NA
    159  omega  16  13   0 fullsample        1  TRUE 15.169 0.000  0.069      NA
    160  omega  17  13   0 fullsample        1  TRUE  7.680 0.006  0.046      NA
    161  omega  18  13   0 fullsample        1  TRUE 26.936 0.000  0.104      NA
    162  omega  15  14  52 fullsample        1 FALSE  0.000 0.999  0.000      NA
    163  omega  16  14   0 fullsample        1  TRUE  3.300 0.069  0.050      NA
    164  omega  17  14   0 fullsample        1  TRUE  1.876 0.171  0.038      NA
    165  omega  18  14  53 fullsample        1 FALSE  0.000 0.999  0.000      NA
    166  omega  16  15  54 fullsample        1 FALSE  0.000 0.999  0.000      NA
    167  omega  17  15  55 fullsample        1 FALSE  0.000 0.999  0.000      NA
    168  omega  18  15  56 fullsample        1 FALSE  0.000 0.999  0.000      NA
    169  omega  17  16  57 fullsample        1 FALSE  0.000 0.998  0.000      NA
    170  omega  18  16   0 fullsample        1  TRUE 61.706 0.000  0.245      NA
    171  omega  18  17  58 fullsample        1 FALSE  0.000 0.998  0.000      NA
    172  delta   1   1  59 fullsample        1 FALSE  0.000 0.999  0.000      NA
    173  delta   2   2  60 fullsample        1 FALSE  0.000 0.999  0.000      NA
    174  delta   3   3  61 fullsample        1 FALSE  0.000 1.000  0.000      NA
    175  delta   4   4  62 fullsample        1 FALSE  0.000 1.000  0.000      NA
    176  delta   5   5  63 fullsample        1 FALSE  0.000 1.000  0.000      NA
    177  delta   6   6  64 fullsample        1 FALSE  0.000 1.000  0.000      NA
    178  delta   7   7  65 fullsample        1 FALSE  0.000 1.000  0.000      NA
    179  delta   8   8  66 fullsample        1 FALSE  0.000 1.000  0.000      NA
    180  delta   9   9  67 fullsample        1 FALSE  0.000 1.000  0.000      NA
    181  delta  10  10  68 fullsample        1 FALSE  0.000 1.000  0.000      NA
    182  delta  11  11  69 fullsample        1 FALSE  0.000 0.999  0.000      NA
    183  delta  12  12  70 fullsample        1 FALSE  0.000 0.999  0.000      NA
    184  delta  13  13  71 fullsample        1 FALSE  0.000 1.000  0.000      NA
    185  delta  14  14  72 fullsample        1 FALSE  0.000 1.000  0.000      NA
    186  delta  15  15  73 fullsample        1 FALSE  0.000 0.999  0.000      NA
    187  delta  16  16  74 fullsample        1 FALSE  0.000 1.000  0.000      NA
    188  delta  17  17  75 fullsample        1 FALSE  0.000 0.999  0.000      NA
    189  delta  18  18  76 fullsample        1 FALSE  0.000 1.000  0.000      NA
        pmi_free epc_free mi_equal pmi_equal epc_equal minimum maximum identified
    1         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    2         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    3         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    4         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    5         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    6         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    7         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    8         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    9         NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    10        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    11        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    12        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    13        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    14        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    15        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    16        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    17        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    18        NA       NA       NA        NA        NA    -Inf     Inf      FALSE
    19        NA       NA       NA        NA        NA      -1       1      FALSE
    20        NA       NA       NA        NA        NA      -1       1      FALSE
    21        NA       NA       NA        NA        NA      -1       1      FALSE
    22        NA       NA       NA        NA        NA      -1       1      FALSE
    23        NA       NA       NA        NA        NA      -1       1      FALSE
    24        NA       NA       NA        NA        NA      -1       1      FALSE
    25        NA       NA       NA        NA        NA      -1       1      FALSE
    26        NA       NA       NA        NA        NA      -1       1      FALSE
    27        NA       NA       NA        NA        NA      -1       1      FALSE
    28        NA       NA       NA        NA        NA      -1       1      FALSE
    29        NA       NA       NA        NA        NA      -1       1      FALSE
    30        NA       NA       NA        NA        NA      -1       1      FALSE
    31        NA       NA       NA        NA        NA      -1       1      FALSE
    32        NA       NA       NA        NA        NA      -1       1      FALSE
    33        NA       NA       NA        NA        NA      -1       1      FALSE
    34        NA       NA       NA        NA        NA      -1       1      FALSE
    35        NA       NA       NA        NA        NA      -1       1      FALSE
    36        NA       NA       NA        NA        NA      -1       1      FALSE
    37        NA       NA       NA        NA        NA      -1       1      FALSE
    38        NA       NA       NA        NA        NA      -1       1      FALSE
    39        NA       NA       NA        NA        NA      -1       1      FALSE
    40        NA       NA       NA        NA        NA      -1       1      FALSE
    41        NA       NA       NA        NA        NA      -1       1      FALSE
    42        NA       NA       NA        NA        NA      -1       1      FALSE
    43        NA       NA       NA        NA        NA      -1       1      FALSE
    44        NA       NA       NA        NA        NA      -1       1      FALSE
    45        NA       NA       NA        NA        NA      -1       1      FALSE
    46        NA       NA       NA        NA        NA      -1       1      FALSE
    47        NA       NA       NA        NA        NA      -1       1      FALSE
    48        NA       NA       NA        NA        NA      -1       1      FALSE
    49        NA       NA       NA        NA        NA      -1       1      FALSE
    50        NA       NA       NA        NA        NA      -1       1      FALSE
    51        NA       NA       NA        NA        NA      -1       1      FALSE
    52        NA       NA       NA        NA        NA      -1       1      FALSE
    53        NA       NA       NA        NA        NA      -1       1      FALSE
    54        NA       NA       NA        NA        NA      -1       1      FALSE
    55        NA       NA       NA        NA        NA      -1       1      FALSE
    56        NA       NA       NA        NA        NA      -1       1      FALSE
    57        NA       NA       NA        NA        NA      -1       1      FALSE
    58        NA       NA       NA        NA        NA      -1       1      FALSE
    59        NA       NA       NA        NA        NA      -1       1      FALSE
    60        NA       NA       NA        NA        NA      -1       1      FALSE
    61        NA       NA       NA        NA        NA      -1       1      FALSE
    62        NA       NA       NA        NA        NA      -1       1      FALSE
    63        NA       NA       NA        NA        NA      -1       1      FALSE
    64        NA       NA       NA        NA        NA      -1       1      FALSE
    65        NA       NA       NA        NA        NA      -1       1      FALSE
    66        NA       NA       NA        NA        NA      -1       1      FALSE
    67        NA       NA       NA        NA        NA      -1       1      FALSE
    68        NA       NA       NA        NA        NA      -1       1      FALSE
    69        NA       NA       NA        NA        NA      -1       1      FALSE
    70        NA       NA       NA        NA        NA      -1       1      FALSE
    71        NA       NA       NA        NA        NA      -1       1      FALSE
    72        NA       NA       NA        NA        NA      -1       1      FALSE
    73        NA       NA       NA        NA        NA      -1       1      FALSE
    74        NA       NA       NA        NA        NA      -1       1      FALSE
    75        NA       NA       NA        NA        NA      -1       1      FALSE
    76        NA       NA       NA        NA        NA      -1       1      FALSE
    77        NA       NA       NA        NA        NA      -1       1      FALSE
    78        NA       NA       NA        NA        NA      -1       1      FALSE
    79        NA       NA       NA        NA        NA      -1       1      FALSE
    80        NA       NA       NA        NA        NA      -1       1      FALSE
    81        NA       NA       NA        NA        NA      -1       1      FALSE
    82        NA       NA       NA        NA        NA      -1       1      FALSE
    83        NA       NA       NA        NA        NA      -1       1      FALSE
    84        NA       NA       NA        NA        NA      -1       1      FALSE
    85        NA       NA       NA        NA        NA      -1       1      FALSE
    86        NA       NA       NA        NA        NA      -1       1      FALSE
    87        NA       NA       NA        NA        NA      -1       1      FALSE
    88        NA       NA       NA        NA        NA      -1       1      FALSE
    89        NA       NA       NA        NA        NA      -1       1      FALSE
    90        NA       NA       NA        NA        NA      -1       1      FALSE
    91        NA       NA       NA        NA        NA      -1       1      FALSE
    92        NA       NA       NA        NA        NA      -1       1      FALSE
    93        NA       NA       NA        NA        NA      -1       1      FALSE
    94        NA       NA       NA        NA        NA      -1       1      FALSE
    95        NA       NA       NA        NA        NA      -1       1      FALSE
    96        NA       NA       NA        NA        NA      -1       1      FALSE
    97        NA       NA       NA        NA        NA      -1       1      FALSE
    98        NA       NA       NA        NA        NA      -1       1      FALSE
    99        NA       NA       NA        NA        NA      -1       1      FALSE
    100       NA       NA       NA        NA        NA      -1       1      FALSE
    101       NA       NA       NA        NA        NA      -1       1      FALSE
    102       NA       NA       NA        NA        NA      -1       1      FALSE
    103       NA       NA       NA        NA        NA      -1       1      FALSE
    104       NA       NA       NA        NA        NA      -1       1      FALSE
    105       NA       NA       NA        NA        NA      -1       1      FALSE
    106       NA       NA       NA        NA        NA      -1       1      FALSE
    107       NA       NA       NA        NA        NA      -1       1      FALSE
    108       NA       NA       NA        NA        NA      -1       1      FALSE
    109       NA       NA       NA        NA        NA      -1       1      FALSE
    110       NA       NA       NA        NA        NA      -1       1      FALSE
    111       NA       NA       NA        NA        NA      -1       1      FALSE
    112       NA       NA       NA        NA        NA      -1       1      FALSE
    113       NA       NA       NA        NA        NA      -1       1      FALSE
    114       NA       NA       NA        NA        NA      -1       1      FALSE
    115       NA       NA       NA        NA        NA      -1       1      FALSE
    116       NA       NA       NA        NA        NA      -1       1      FALSE
    117       NA       NA       NA        NA        NA      -1       1      FALSE
    118       NA       NA       NA        NA        NA      -1       1      FALSE
    119       NA       NA       NA        NA        NA      -1       1      FALSE
    120       NA       NA       NA        NA        NA      -1       1      FALSE
    121       NA       NA       NA        NA        NA      -1       1      FALSE
    122       NA       NA       NA        NA        NA      -1       1      FALSE
    123       NA       NA       NA        NA        NA      -1       1      FALSE
    124       NA       NA       NA        NA        NA      -1       1      FALSE
    125       NA       NA       NA        NA        NA      -1       1      FALSE
    126       NA       NA       NA        NA        NA      -1       1      FALSE
    127       NA       NA       NA        NA        NA      -1       1      FALSE
    128       NA       NA       NA        NA        NA      -1       1      FALSE
    129       NA       NA       NA        NA        NA      -1       1      FALSE
    130       NA       NA       NA        NA        NA      -1       1      FALSE
    131       NA       NA       NA        NA        NA      -1       1      FALSE
    132       NA       NA       NA        NA        NA      -1       1      FALSE
    133       NA       NA       NA        NA        NA      -1       1      FALSE
    134       NA       NA       NA        NA        NA      -1       1      FALSE
    135       NA       NA       NA        NA        NA      -1       1      FALSE
    136       NA       NA       NA        NA        NA      -1       1      FALSE
    137       NA       NA       NA        NA        NA      -1       1      FALSE
    138       NA       NA       NA        NA        NA      -1       1      FALSE
    139       NA       NA       NA        NA        NA      -1       1      FALSE
    140       NA       NA       NA        NA        NA      -1       1      FALSE
    141       NA       NA       NA        NA        NA      -1       1      FALSE
    142       NA       NA       NA        NA        NA      -1       1      FALSE
    143       NA       NA       NA        NA        NA      -1       1      FALSE
    144       NA       NA       NA        NA        NA      -1       1      FALSE
    145       NA       NA       NA        NA        NA      -1       1      FALSE
    146       NA       NA       NA        NA        NA      -1       1      FALSE
    147       NA       NA       NA        NA        NA      -1       1      FALSE
    148       NA       NA       NA        NA        NA      -1       1      FALSE
    149       NA       NA       NA        NA        NA      -1       1      FALSE
    150       NA       NA       NA        NA        NA      -1       1      FALSE
    151       NA       NA       NA        NA        NA      -1       1      FALSE
    152       NA       NA       NA        NA        NA      -1       1      FALSE
    153       NA       NA       NA        NA        NA      -1       1      FALSE
    154       NA       NA       NA        NA        NA      -1       1      FALSE
    155       NA       NA       NA        NA        NA      -1       1      FALSE
    156       NA       NA       NA        NA        NA      -1       1      FALSE
    157       NA       NA       NA        NA        NA      -1       1      FALSE
    158       NA       NA       NA        NA        NA      -1       1      FALSE
    159       NA       NA       NA        NA        NA      -1       1      FALSE
    160       NA       NA       NA        NA        NA      -1       1      FALSE
    161       NA       NA       NA        NA        NA      -1       1      FALSE
    162       NA       NA       NA        NA        NA      -1       1      FALSE
    163       NA       NA       NA        NA        NA      -1       1      FALSE
    164       NA       NA       NA        NA        NA      -1       1      FALSE
    165       NA       NA       NA        NA        NA      -1       1      FALSE
    166       NA       NA       NA        NA        NA      -1       1      FALSE
    167       NA       NA       NA        NA        NA      -1       1      FALSE
    168       NA       NA       NA        NA        NA      -1       1      FALSE
    169       NA       NA       NA        NA        NA      -1       1      FALSE
    170       NA       NA       NA        NA        NA      -1       1      FALSE
    171       NA       NA       NA        NA        NA      -1       1      FALSE
    172       NA       NA       NA        NA        NA       0     Inf      FALSE
    173       NA       NA       NA        NA        NA       0     Inf      FALSE
    174       NA       NA       NA        NA        NA       0     Inf      FALSE
    175       NA       NA       NA        NA        NA       0     Inf      FALSE
    176       NA       NA       NA        NA        NA       0     Inf      FALSE
    177       NA       NA       NA        NA        NA       0     Inf      FALSE
    178       NA       NA       NA        NA        NA       0     Inf      FALSE
    179       NA       NA       NA        NA        NA       0     Inf      FALSE
    180       NA       NA       NA        NA        NA       0     Inf      FALSE
    181       NA       NA       NA        NA        NA       0     Inf      FALSE
    182       NA       NA       NA        NA        NA       0     Inf      FALSE
    183       NA       NA       NA        NA        NA       0     Inf      FALSE
    184       NA       NA       NA        NA        NA       0     Inf      FALSE
    185       NA       NA       NA        NA        NA       0     Inf      FALSE
    186       NA       NA       NA        NA        NA       0     Inf      FALSE
    187       NA       NA       NA        NA        NA       0     Inf      FALSE
    188       NA       NA       NA        NA        NA       0     Inf      FALSE
    189       NA       NA       NA        NA        NA       0     Inf      FALSE

### Network Figures

``` r
knitr::include_graphics("./figures/nyul_irma-network_study-2.png")
```

![](./figures/nyul_irma-network_study-2.png)

``` r
knitr::include_graphics("./figures/nyul_irma-network_study-2_walktrap.png")
```

![](./figures/nyul_irma-network_study-2_walktrap.png)

# Connectivity Hypothesis

## Study 1

### Low ASI Scores

``` r
low_summary_1
```

    # A tibble: 1 × 3
       mean    sd     n
      <dbl> <dbl> <int>
    1  34.3  12.2   259

``` r
aspl_low_1
```

    [1] 10.699

### Moderate ASI Scores

``` r
mod_summary_1
```

    # A tibble: 1 × 3
       mean    sd     n
      <dbl> <dbl> <int>
    1  49.8  15.6   258

``` r
aspl_mod_1
```

    [1] 12.352

### High ASI Scores

``` r
high_summary_1
```

    # A tibble: 1 × 3
       mean    sd     n
      <dbl> <dbl> <int>
    1  59.3  17.4   240

``` r
aspl_high_1
```

    [1] 12.243

## Study 2

### Low ASI Scores

``` r
low_summary_2
```

    # A tibble: 1 × 3
       mean    sd     n
      <dbl> <dbl> <int>
    1  47.8  18.0   337

``` r
aspl_low_2
```

    [1] 12.154

### Moderate ASI Scores

``` r
mod_summary_2
```

    # A tibble: 1 × 3
       mean    sd     n
      <dbl> <dbl> <int>
    1  62.6  18.5   359

``` r
aspl_mod_2
```

    [1] 11.526

### High ASI Scores

``` r
high_summary_2
```

    # A tibble: 1 × 3
       mean    sd     n
      <dbl> <dbl> <int>
    1  71.1  18.5   311

``` r
aspl_high_2
```

    [1] 11.69
