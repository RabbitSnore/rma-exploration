Hahnel et al (2023) - Network Re-analysis
================

- <a href="#network-analysis" id="toc-network-analysis">Network
  Analysis</a>
  - <a href="#training-network" id="toc-training-network">Training
    Network</a>
    - <a href="#fit-indices" id="toc-fit-indices">Fit Indices</a>
    - <a href="#parameter-estimates" id="toc-parameter-estimates">Parameter
      Estimates</a>
    - <a href="#network-figures" id="toc-network-figures">Network Figures</a>
  - <a href="#test-network" id="toc-test-network">Test Network</a>
    - <a href="#fit-indices-1" id="toc-fit-indices-1">Fit Indices</a>
    - <a href="#parameter-estimates-1"
      id="toc-parameter-estimates-1">Parameter Estimates</a>
    - <a href="#network-figures-1" id="toc-network-figures-1">Network
      Figures</a>
- <a href="#confirmatory-factor-analysis"
  id="toc-confirmatory-factor-analysis">Confirmatory Factor Analysis</a>
  - <a href="#training-data" id="toc-training-data">Training Data</a>
    - <a href="#fit-indices-2" id="toc-fit-indices-2">Fit Indices</a>
    - <a href="#parameter-estimates-2"
      id="toc-parameter-estimates-2">Parameter Estimates</a>
  - <a href="#test-data" id="toc-test-data">Test Data</a>
    - <a href="#fit-indices-3" id="toc-fit-indices-3">Fit Indices</a>
    - <a href="#parameter-estimates-3"
      id="toc-parameter-estimates-3">Parameter Estimates</a>

# Network Analysis

## Training Network

### Fit Indices

``` r
network_fit_ind_1 %>% 
  mutate(across(where(is.numeric), round, 6))
```

                                Measure        Value
    logl                           logl -4098.733783
    unrestricted.logl unrestricted.logl -3996.130729
    baseline.logl         baseline.logl -5039.783913
    nvar                           nvar    21.000000
    nobs                           nobs   252.000000
    npar                           npar    79.000000
    df                               df   173.000000
    objective                 objective    12.006233
    chisq                         chisq   205.206107
    pvalue                       pvalue     0.047496
    baseline.chisq       baseline.chisq  2087.306367
    baseline.df             baseline.df   210.000000
    baseline.pvalue     baseline.pvalue     0.000000
    nfi                             nfi     0.901689
    pnfi                           pnfi     0.742820
    tli                             tli     0.979175
    nnfi                           nnfi     0.979175
    rfi                             rfi     0.880662
    ifi                             ifi     0.983176
    rni                             rni     0.982845
    cfi                             cfi     0.982845
    rmsea                         rmsea     0.033899
    rmsea.ci.lower       rmsea.ci.lower     0.003945
    rmsea.ci.upper       rmsea.ci.upper     0.050759
    rmsea.pvalue           rmsea.pvalue     0.940804
    aic.ll                       aic.ll  8355.467565
    aic.ll2                     aic.ll2  8509.613907
    aic.x                         aic.x  -140.793893
    aic.x2                       aic.x2   363.206107
    bic                             bic  8599.387676
    bic2                           bic2  8349.290761
    ebic.25                     ebic.25  8839.904949
    ebic.5                       ebic.5  9080.422221
    ebic.75                     ebic.75  9272.836039
    ebic1                         ebic1  9561.456766

### Parameter Estimates

``` r
network_pars_1 %>% 
  mutate(across(where(is.numeric), round, 3))
```

                        var1 var1_id  op                 var2 var2_id   est std
    1         Asked_for_it_1       1  ~1                 <NA>      NA 1.698  NA
    2         Asked_for_it_2       2  ~1                 <NA>      NA 1.784  NA
    3         Asked_for_it_3       3  ~1                 <NA>      NA 1.377  NA
    4         Asked_for_it_4       4  ~1                 <NA>      NA 2.414  NA
    5         Asked_for_it_5       5  ~1                 <NA>      NA 1.519  NA
    6         Asked_for_it_6       6  ~1                 <NA>      NA 2.778  NA
    7       didn_t_mean_to_7       7  ~1                 <NA>      NA 2.469  NA
    8       didn_t_mean_to_8       8  ~1                 <NA>      NA 2.210  NA
    9       didn_t_mean_to_9       9  ~1                 <NA>      NA 1.994  NA
    10     didn_t_mean_to_10      10  ~1                 <NA>      NA 2.352  NA
    11     didn_t_mean_to_11      11  ~1                 <NA>      NA 1.580  NA
    12  wasnt_really_rape_12      12  ~1                 <NA>      NA 1.840  NA
    13  wasnt_really_rape_13      13  ~1                 <NA>      NA 1.370  NA
    14  wasnt_really_rape_14      14  ~1                 <NA>      NA 1.278  NA
    15  wasnt_really_rape_15      15  ~1                 <NA>      NA 1.210  NA
    16  Wasnt_really_rape_16      16  ~1                 <NA>      NA 1.086  NA
    17           She_lied_17      17  ~1                 <NA>      NA 2.123  NA
    18           She_lied_18      18  ~1                 <NA>      NA 2.370  NA
    19           She_lied_19      19  ~1                 <NA>      NA 2.481  NA
    20           She_lied_20      20  ~1                 <NA>      NA 2.333  NA
    21           She_lied_21      21  ~1                 <NA>      NA 2.630  NA
    22        Asked_for_it_2       2  --       Asked_for_it_1       1 0.170  NA
    23        Asked_for_it_3       3  --       Asked_for_it_1       1 0.529  NA
    24        Asked_for_it_4       4  --       Asked_for_it_1       1 0.000  NA
    25        Asked_for_it_5       5  --       Asked_for_it_1       1 0.201  NA
    26        Asked_for_it_6       6  --       Asked_for_it_1       1 0.162  NA
    27      didn_t_mean_to_7       7  --       Asked_for_it_1       1 0.000  NA
    28      didn_t_mean_to_8       8  --       Asked_for_it_1       1 0.000  NA
    29      didn_t_mean_to_9       9  --       Asked_for_it_1       1 0.000  NA
    30     didn_t_mean_to_10      10  --       Asked_for_it_1       1 0.000  NA
    31     didn_t_mean_to_11      11  --       Asked_for_it_1       1 0.000  NA
    32  wasnt_really_rape_12      12  --       Asked_for_it_1       1 0.000  NA
    33  wasnt_really_rape_13      13  --       Asked_for_it_1       1 0.000  NA
    34  wasnt_really_rape_14      14  --       Asked_for_it_1       1 0.000  NA
    35  wasnt_really_rape_15      15  --       Asked_for_it_1       1 0.000  NA
    36  Wasnt_really_rape_16      16  --       Asked_for_it_1       1 0.157  NA
    37           She_lied_17      17  --       Asked_for_it_1       1 0.000  NA
    38           She_lied_18      18  --       Asked_for_it_1       1 0.000  NA
    39           She_lied_19      19  --       Asked_for_it_1       1 0.000  NA
    40           She_lied_20      20  --       Asked_for_it_1       1 0.000  NA
    41           She_lied_21      21  --       Asked_for_it_1       1 0.000  NA
    42        Asked_for_it_3       3  --       Asked_for_it_2       2 0.150  NA
    43        Asked_for_it_4       4  --       Asked_for_it_2       2 0.376  NA
    44        Asked_for_it_5       5  --       Asked_for_it_2       2 0.000  NA
    45        Asked_for_it_6       6  --       Asked_for_it_2       2 0.000  NA
    46      didn_t_mean_to_7       7  --       Asked_for_it_2       2 0.000  NA
    47      didn_t_mean_to_8       8  --       Asked_for_it_2       2 0.000  NA
    48      didn_t_mean_to_9       9  --       Asked_for_it_2       2 0.000  NA
    49     didn_t_mean_to_10      10  --       Asked_for_it_2       2 0.000  NA
    50     didn_t_mean_to_11      11  --       Asked_for_it_2       2 0.000  NA
    51  wasnt_really_rape_12      12  --       Asked_for_it_2       2 0.000  NA
    52  wasnt_really_rape_13      13  --       Asked_for_it_2       2 0.000  NA
    53  wasnt_really_rape_14      14  --       Asked_for_it_2       2 0.130  NA
    54  wasnt_really_rape_15      15  --       Asked_for_it_2       2 0.000  NA
    55  Wasnt_really_rape_16      16  --       Asked_for_it_2       2 0.000  NA
    56           She_lied_17      17  --       Asked_for_it_2       2 0.000  NA
    57           She_lied_18      18  --       Asked_for_it_2       2 0.157  NA
    58           She_lied_19      19  --       Asked_for_it_2       2 0.000  NA
    59           She_lied_20      20  --       Asked_for_it_2       2 0.000  NA
    60           She_lied_21      21  --       Asked_for_it_2       2 0.000  NA
    61        Asked_for_it_4       4  --       Asked_for_it_3       3 0.000  NA
    62        Asked_for_it_5       5  --       Asked_for_it_3       3 0.000  NA
    63        Asked_for_it_6       6  --       Asked_for_it_3       3 0.000  NA
    64      didn_t_mean_to_7       7  --       Asked_for_it_3       3 0.000  NA
    65      didn_t_mean_to_8       8  --       Asked_for_it_3       3 0.000  NA
    66      didn_t_mean_to_9       9  --       Asked_for_it_3       3 0.000  NA
    67     didn_t_mean_to_10      10  --       Asked_for_it_3       3 0.000  NA
    68     didn_t_mean_to_11      11  --       Asked_for_it_3       3 0.000  NA
    69  wasnt_really_rape_12      12  --       Asked_for_it_3       3 0.000  NA
    70  wasnt_really_rape_13      13  --       Asked_for_it_3       3 0.000  NA
    71  wasnt_really_rape_14      14  --       Asked_for_it_3       3 0.000  NA
    72  wasnt_really_rape_15      15  --       Asked_for_it_3       3 0.000  NA
    73  Wasnt_really_rape_16      16  --       Asked_for_it_3       3 0.000  NA
    74           She_lied_17      17  --       Asked_for_it_3       3 0.000  NA
    75           She_lied_18      18  --       Asked_for_it_3       3 0.000  NA
    76           She_lied_19      19  --       Asked_for_it_3       3 0.000  NA
    77           She_lied_20      20  --       Asked_for_it_3       3 0.000  NA
    78           She_lied_21      21  --       Asked_for_it_3       3 0.000  NA
    79        Asked_for_it_5       5  --       Asked_for_it_4       4 0.000  NA
    80        Asked_for_it_6       6  --       Asked_for_it_4       4 0.254  NA
    81      didn_t_mean_to_7       7  --       Asked_for_it_4       4 0.000  NA
    82      didn_t_mean_to_8       8  --       Asked_for_it_4       4 0.196  NA
    83      didn_t_mean_to_9       9  --       Asked_for_it_4       4 0.000  NA
    84     didn_t_mean_to_10      10  --       Asked_for_it_4       4 0.000  NA
    85     didn_t_mean_to_11      11  --       Asked_for_it_4       4 0.000  NA
    86  wasnt_really_rape_12      12  --       Asked_for_it_4       4 0.000  NA
    87  wasnt_really_rape_13      13  --       Asked_for_it_4       4 0.000  NA
    88  wasnt_really_rape_14      14  --       Asked_for_it_4       4 0.000  NA
    89  wasnt_really_rape_15      15  --       Asked_for_it_4       4 0.000  NA
    90  Wasnt_really_rape_16      16  --       Asked_for_it_4       4 0.000  NA
    91           She_lied_17      17  --       Asked_for_it_4       4 0.000  NA
    92           She_lied_18      18  --       Asked_for_it_4       4 0.000  NA
    93           She_lied_19      19  --       Asked_for_it_4       4 0.220  NA
    94           She_lied_20      20  --       Asked_for_it_4       4 0.000  NA
    95           She_lied_21      21  --       Asked_for_it_4       4 0.000  NA
    96        Asked_for_it_6       6  --       Asked_for_it_5       5 0.000  NA
    97      didn_t_mean_to_7       7  --       Asked_for_it_5       5 0.144  NA
    98      didn_t_mean_to_8       8  --       Asked_for_it_5       5 0.000  NA
    99      didn_t_mean_to_9       9  --       Asked_for_it_5       5 0.000  NA
    100    didn_t_mean_to_10      10  --       Asked_for_it_5       5 0.000  NA
    101    didn_t_mean_to_11      11  --       Asked_for_it_5       5 0.000  NA
    102 wasnt_really_rape_12      12  --       Asked_for_it_5       5 0.000  NA
    103 wasnt_really_rape_13      13  --       Asked_for_it_5       5 0.000  NA
    104 wasnt_really_rape_14      14  --       Asked_for_it_5       5 0.147  NA
    105 wasnt_really_rape_15      15  --       Asked_for_it_5       5 0.000  NA
    106 Wasnt_really_rape_16      16  --       Asked_for_it_5       5 0.000  NA
    107          She_lied_17      17  --       Asked_for_it_5       5 0.000  NA
    108          She_lied_18      18  --       Asked_for_it_5       5 0.000  NA
    109          She_lied_19      19  --       Asked_for_it_5       5 0.000  NA
    110          She_lied_20      20  --       Asked_for_it_5       5 0.000  NA
    111          She_lied_21      21  --       Asked_for_it_5       5 0.202  NA
    112     didn_t_mean_to_7       7  --       Asked_for_it_6       6 0.000  NA
    113     didn_t_mean_to_8       8  --       Asked_for_it_6       6 0.000  NA
    114     didn_t_mean_to_9       9  --       Asked_for_it_6       6 0.000  NA
    115    didn_t_mean_to_10      10  --       Asked_for_it_6       6 0.000  NA
    116    didn_t_mean_to_11      11  --       Asked_for_it_6       6 0.000  NA
    117 wasnt_really_rape_12      12  --       Asked_for_it_6       6 0.000  NA
    118 wasnt_really_rape_13      13  --       Asked_for_it_6       6 0.000  NA
    119 wasnt_really_rape_14      14  --       Asked_for_it_6       6 0.000  NA
    120 wasnt_really_rape_15      15  --       Asked_for_it_6       6 0.000  NA
    121 Wasnt_really_rape_16      16  --       Asked_for_it_6       6 0.000  NA
    122          She_lied_17      17  --       Asked_for_it_6       6 0.171  NA
    123          She_lied_18      18  --       Asked_for_it_6       6 0.000  NA
    124          She_lied_19      19  --       Asked_for_it_6       6 0.000  NA
    125          She_lied_20      20  --       Asked_for_it_6       6 0.273  NA
    126          She_lied_21      21  --       Asked_for_it_6       6 0.000  NA
    127     didn_t_mean_to_8       8  --     didn_t_mean_to_7       7 0.000  NA
    128     didn_t_mean_to_9       9  --     didn_t_mean_to_7       7 0.486  NA
    129    didn_t_mean_to_10      10  --     didn_t_mean_to_7       7 0.164  NA
    130    didn_t_mean_to_11      11  --     didn_t_mean_to_7       7 0.000  NA
    131 wasnt_really_rape_12      12  --     didn_t_mean_to_7       7 0.000  NA
    132 wasnt_really_rape_13      13  --     didn_t_mean_to_7       7 0.000  NA
    133 wasnt_really_rape_14      14  --     didn_t_mean_to_7       7 0.000  NA
    134 wasnt_really_rape_15      15  --     didn_t_mean_to_7       7 0.000  NA
    135 Wasnt_really_rape_16      16  --     didn_t_mean_to_7       7 0.000  NA
    136          She_lied_17      17  --     didn_t_mean_to_7       7 0.000  NA
    137          She_lied_18      18  --     didn_t_mean_to_7       7 0.000  NA
    138          She_lied_19      19  --     didn_t_mean_to_7       7 0.000  NA
    139          She_lied_20      20  --     didn_t_mean_to_7       7 0.000  NA
    140          She_lied_21      21  --     didn_t_mean_to_7       7 0.000  NA
    141     didn_t_mean_to_9       9  --     didn_t_mean_to_8       8 0.250  NA
    142    didn_t_mean_to_10      10  --     didn_t_mean_to_8       8 0.405  NA
    143    didn_t_mean_to_11      11  --     didn_t_mean_to_8       8 0.131  NA
    144 wasnt_really_rape_12      12  --     didn_t_mean_to_8       8 0.000  NA
    145 wasnt_really_rape_13      13  --     didn_t_mean_to_8       8 0.000  NA
    146 wasnt_really_rape_14      14  --     didn_t_mean_to_8       8 0.000  NA
    147 wasnt_really_rape_15      15  --     didn_t_mean_to_8       8 0.000  NA
    148 Wasnt_really_rape_16      16  --     didn_t_mean_to_8       8 0.000  NA
    149          She_lied_17      17  --     didn_t_mean_to_8       8 0.000  NA
    150          She_lied_18      18  --     didn_t_mean_to_8       8 0.000  NA
    151          She_lied_19      19  --     didn_t_mean_to_8       8 0.000  NA
    152          She_lied_20      20  --     didn_t_mean_to_8       8 0.000  NA
    153          She_lied_21      21  --     didn_t_mean_to_8       8 0.000  NA
    154    didn_t_mean_to_10      10  --     didn_t_mean_to_9       9 0.000  NA
    155    didn_t_mean_to_11      11  --     didn_t_mean_to_9       9 0.000  NA
    156 wasnt_really_rape_12      12  --     didn_t_mean_to_9       9 0.000  NA
    157 wasnt_really_rape_13      13  --     didn_t_mean_to_9       9 0.000  NA
    158 wasnt_really_rape_14      14  --     didn_t_mean_to_9       9 0.000  NA
    159 wasnt_really_rape_15      15  --     didn_t_mean_to_9       9 0.000  NA
    160 Wasnt_really_rape_16      16  --     didn_t_mean_to_9       9 0.000  NA
    161          She_lied_17      17  --     didn_t_mean_to_9       9 0.000  NA
    162          She_lied_18      18  --     didn_t_mean_to_9       9 0.000  NA
    163          She_lied_19      19  --     didn_t_mean_to_9       9 0.000  NA
    164          She_lied_20      20  --     didn_t_mean_to_9       9 0.000  NA
    165          She_lied_21      21  --     didn_t_mean_to_9       9 0.000  NA
    166    didn_t_mean_to_11      11  --    didn_t_mean_to_10      10 0.000  NA
    167 wasnt_really_rape_12      12  --    didn_t_mean_to_10      10 0.000  NA
    168 wasnt_really_rape_13      13  --    didn_t_mean_to_10      10 0.000  NA
    169 wasnt_really_rape_14      14  --    didn_t_mean_to_10      10 0.000  NA
    170 wasnt_really_rape_15      15  --    didn_t_mean_to_10      10 0.000  NA
    171 Wasnt_really_rape_16      16  --    didn_t_mean_to_10      10 0.000  NA
    172          She_lied_17      17  --    didn_t_mean_to_10      10 0.000  NA
    173          She_lied_18      18  --    didn_t_mean_to_10      10 0.000  NA
    174          She_lied_19      19  --    didn_t_mean_to_10      10 0.000  NA
    175          She_lied_20      20  --    didn_t_mean_to_10      10 0.000  NA
    176          She_lied_21      21  --    didn_t_mean_to_10      10 0.000  NA
    177 wasnt_really_rape_12      12  --    didn_t_mean_to_11      11 0.494  NA
    178 wasnt_really_rape_13      13  --    didn_t_mean_to_11      11 0.000  NA
    179 wasnt_really_rape_14      14  --    didn_t_mean_to_11      11 0.000  NA
    180 wasnt_really_rape_15      15  --    didn_t_mean_to_11      11 0.150  NA
    181 Wasnt_really_rape_16      16  --    didn_t_mean_to_11      11 0.000  NA
    182          She_lied_17      17  --    didn_t_mean_to_11      11 0.000  NA
    183          She_lied_18      18  --    didn_t_mean_to_11      11 0.000  NA
    184          She_lied_19      19  --    didn_t_mean_to_11      11 0.000  NA
    185          She_lied_20      20  --    didn_t_mean_to_11      11 0.000  NA
    186          She_lied_21      21  --    didn_t_mean_to_11      11 0.000  NA
    187 wasnt_really_rape_13      13  -- wasnt_really_rape_12      12 0.000  NA
    188 wasnt_really_rape_14      14  -- wasnt_really_rape_12      12 0.000  NA
    189 wasnt_really_rape_15      15  -- wasnt_really_rape_12      12 0.000  NA
    190 Wasnt_really_rape_16      16  -- wasnt_really_rape_12      12 0.000  NA
    191          She_lied_17      17  -- wasnt_really_rape_12      12 0.143  NA
    192          She_lied_18      18  -- wasnt_really_rape_12      12 0.157  NA
    193          She_lied_19      19  -- wasnt_really_rape_12      12 0.000  NA
    194          She_lied_20      20  -- wasnt_really_rape_12      12 0.000  NA
    195          She_lied_21      21  -- wasnt_really_rape_12      12 0.000  NA
    196 wasnt_really_rape_14      14  -- wasnt_really_rape_13      13 0.483  NA
    197 wasnt_really_rape_15      15  -- wasnt_really_rape_13      13 0.239  NA
    198 Wasnt_really_rape_16      16  -- wasnt_really_rape_13      13 0.000  NA
    199          She_lied_17      17  -- wasnt_really_rape_13      13 0.000  NA
    200          She_lied_18      18  -- wasnt_really_rape_13      13 0.000  NA
    201          She_lied_19      19  -- wasnt_really_rape_13      13 0.000  NA
    202          She_lied_20      20  -- wasnt_really_rape_13      13 0.000  NA
    203          She_lied_21      21  -- wasnt_really_rape_13      13 0.000  NA
    204 wasnt_really_rape_15      15  -- wasnt_really_rape_14      14 0.371  NA
    205 Wasnt_really_rape_16      16  -- wasnt_really_rape_14      14 0.000  NA
    206          She_lied_17      17  -- wasnt_really_rape_14      14 0.194  NA
    207          She_lied_18      18  -- wasnt_really_rape_14      14 0.000  NA
    208          She_lied_19      19  -- wasnt_really_rape_14      14 0.000  NA
    209          She_lied_20      20  -- wasnt_really_rape_14      14 0.000  NA
    210          She_lied_21      21  -- wasnt_really_rape_14      14 0.000  NA
    211 Wasnt_really_rape_16      16  -- wasnt_really_rape_15      15 0.408  NA
    212          She_lied_17      17  -- wasnt_really_rape_15      15 0.000  NA
    213          She_lied_18      18  -- wasnt_really_rape_15      15 0.000  NA
    214          She_lied_19      19  -- wasnt_really_rape_15      15 0.000  NA
    215          She_lied_20      20  -- wasnt_really_rape_15      15 0.000  NA
    216          She_lied_21      21  -- wasnt_really_rape_15      15 0.000  NA
    217          She_lied_17      17  -- Wasnt_really_rape_16      16 0.000  NA
    218          She_lied_18      18  -- Wasnt_really_rape_16      16 0.000  NA
    219          She_lied_19      19  -- Wasnt_really_rape_16      16 0.000  NA
    220          She_lied_20      20  -- Wasnt_really_rape_16      16 0.000  NA
    221          She_lied_21      21  -- Wasnt_really_rape_16      16 0.000  NA
    222          She_lied_18      18  --          She_lied_17      17 0.175  NA
    223          She_lied_19      19  --          She_lied_17      17 0.000  NA
    224          She_lied_20      20  --          She_lied_17      17 0.000  NA
    225          She_lied_21      21  --          She_lied_17      17 0.000  NA
    226          She_lied_19      19  --          She_lied_18      18 0.429  NA
    227          She_lied_20      20  --          She_lied_18      18 0.000  NA
    228          She_lied_21      21  --          She_lied_18      18 0.319  NA
    229          She_lied_20      20  --          She_lied_19      19 0.195  NA
    230          She_lied_21      21  --          She_lied_19      19 0.242  NA
    231          She_lied_21      21  --          She_lied_20      20 0.212  NA
    232       Asked_for_it_1       1 ~/~       Asked_for_it_1       1 0.687  NA
    233       Asked_for_it_2       2 ~/~       Asked_for_it_2       2 0.753  NA
    234       Asked_for_it_3       3 ~/~       Asked_for_it_3       3 0.562  NA
    235       Asked_for_it_4       4 ~/~       Asked_for_it_4       4 0.902  NA
    236       Asked_for_it_5       5 ~/~       Asked_for_it_5       5 0.657  NA
    237       Asked_for_it_6       6 ~/~       Asked_for_it_6       6 1.028  NA
    238     didn_t_mean_to_7       7 ~/~     didn_t_mean_to_7       7 0.992  NA
    239     didn_t_mean_to_8       8 ~/~     didn_t_mean_to_8       8 0.874  NA
    240     didn_t_mean_to_9       9 ~/~     didn_t_mean_to_9       9 0.959  NA
    241    didn_t_mean_to_10      10 ~/~    didn_t_mean_to_10      10 1.059  NA
    242    didn_t_mean_to_11      11 ~/~    didn_t_mean_to_11      11 0.719  NA
    243 wasnt_really_rape_12      12 ~/~ wasnt_really_rape_12      12 0.812  NA
    244 wasnt_really_rape_13      13 ~/~ wasnt_really_rape_13      13 0.543  NA
    245 wasnt_really_rape_14      14 ~/~ wasnt_really_rape_14      14 0.367  NA
    246 wasnt_really_rape_15      15 ~/~ wasnt_really_rape_15      15 0.347  NA
    247 Wasnt_really_rape_16      16 ~/~ Wasnt_really_rape_16      16 0.366  NA
    248          She_lied_17      17 ~/~          She_lied_17      17 1.020  NA
    249          She_lied_18      18 ~/~          She_lied_18      18 0.678  NA
    250          She_lied_19      19 ~/~          She_lied_19      19 0.727  NA
    251          She_lied_20      20 ~/~          She_lied_20      20 0.925  NA
    252          She_lied_21      21 ~/~          She_lied_21      21 0.778  NA
           se     p se_boot p_boot matrix row col par      group group_id fixed
    1   0.089 0.000      NA     NA     mu   1   1   1 fullsample        1 FALSE
    2   0.097 0.000      NA     NA     mu   2   1   2 fullsample        1 FALSE
    3   0.064 0.000      NA     NA     mu   3   1   3 fullsample        1 FALSE
    4   0.114 0.000      NA     NA     mu   4   1   4 fullsample        1 FALSE
    5   0.067 0.000      NA     NA     mu   5   1   5 fullsample        1 FALSE
    6   0.112 0.000      NA     NA     mu   6   1   6 fullsample        1 FALSE
    7   0.098 0.000      NA     NA     mu   7   1   7 fullsample        1 FALSE
    8   0.090 0.000      NA     NA     mu   8   1   8 fullsample        1 FALSE
    9   0.095 0.000      NA     NA     mu   9   1   9 fullsample        1 FALSE
    10  0.098 0.000      NA     NA     mu  10   1  10 fullsample        1 FALSE
    11  0.075 0.000      NA     NA     mu  11   1  11 fullsample        1 FALSE
    12  0.087 0.000      NA     NA     mu  12   1  12 fullsample        1 FALSE
    13  0.071 0.000      NA     NA     mu  13   1  13 fullsample        1 FALSE
    14  0.057 0.000      NA     NA     mu  14   1  14 fullsample        1 FALSE
    15  0.050 0.000      NA     NA     mu  15   1  15 fullsample        1 FALSE
    16  0.038 0.000      NA     NA     mu  16   1  16 fullsample        1 FALSE
    17  0.107 0.000      NA     NA     mu  17   1  17 fullsample        1 FALSE
    18  0.103 0.000      NA     NA     mu  18   1  18 fullsample        1 FALSE
    19  0.107 0.000      NA     NA     mu  19   1  19 fullsample        1 FALSE
    20  0.099 0.000      NA     NA     mu  20   1  20 fullsample        1 FALSE
    21  0.103 0.000      NA     NA     mu  21   1  21 fullsample        1 FALSE
    22  0.058 0.004      NA     NA  omega   2   1  22 fullsample        1 FALSE
    23  0.052 0.000      NA     NA  omega   3   1  23 fullsample        1 FALSE
    24     NA    NA      NA     NA  omega   4   1   0 fullsample        1  TRUE
    25  0.053 0.000      NA     NA  omega   5   1  24 fullsample        1 FALSE
    26  0.051 0.001      NA     NA  omega   6   1  25 fullsample        1 FALSE
    27     NA    NA      NA     NA  omega   7   1   0 fullsample        1  TRUE
    28     NA    NA      NA     NA  omega   8   1   0 fullsample        1  TRUE
    29     NA    NA      NA     NA  omega   9   1   0 fullsample        1  TRUE
    30     NA    NA      NA     NA  omega  10   1   0 fullsample        1  TRUE
    31     NA    NA      NA     NA  omega  11   1   0 fullsample        1  TRUE
    32     NA    NA      NA     NA  omega  12   1   0 fullsample        1  TRUE
    33     NA    NA      NA     NA  omega  13   1   0 fullsample        1  TRUE
    34     NA    NA      NA     NA  omega  14   1   0 fullsample        1  TRUE
    35     NA    NA      NA     NA  omega  15   1   0 fullsample        1  TRUE
    36  0.047 0.001      NA     NA  omega  16   1  26 fullsample        1 FALSE
    37     NA    NA      NA     NA  omega  17   1   0 fullsample        1  TRUE
    38     NA    NA      NA     NA  omega  18   1   0 fullsample        1  TRUE
    39     NA    NA      NA     NA  omega  19   1   0 fullsample        1  TRUE
    40     NA    NA      NA     NA  omega  20   1   0 fullsample        1  TRUE
    41     NA    NA      NA     NA  omega  21   1   0 fullsample        1  TRUE
    42  0.060 0.012      NA     NA  omega   3   2  27 fullsample        1 FALSE
    43  0.054 0.000      NA     NA  omega   4   2  28 fullsample        1 FALSE
    44     NA    NA      NA     NA  omega   5   2   0 fullsample        1  TRUE
    45     NA    NA      NA     NA  omega   6   2   0 fullsample        1  TRUE
    46     NA    NA      NA     NA  omega   7   2   0 fullsample        1  TRUE
    47     NA    NA      NA     NA  omega   8   2   0 fullsample        1  TRUE
    48     NA    NA      NA     NA  omega   9   2   0 fullsample        1  TRUE
    49     NA    NA      NA     NA  omega  10   2   0 fullsample        1  TRUE
    50     NA    NA      NA     NA  omega  11   2   0 fullsample        1  TRUE
    51     NA    NA      NA     NA  omega  12   2   0 fullsample        1  TRUE
    52     NA    NA      NA     NA  omega  13   2   0 fullsample        1  TRUE
    53  0.039 0.001      NA     NA  omega  14   2  29 fullsample        1 FALSE
    54     NA    NA      NA     NA  omega  15   2   0 fullsample        1  TRUE
    55     NA    NA      NA     NA  omega  16   2   0 fullsample        1  TRUE
    56     NA    NA      NA     NA  omega  17   2   0 fullsample        1  TRUE
    57  0.046 0.001      NA     NA  omega  18   2  30 fullsample        1 FALSE
    58     NA    NA      NA     NA  omega  19   2   0 fullsample        1  TRUE
    59     NA    NA      NA     NA  omega  20   2   0 fullsample        1  TRUE
    60     NA    NA      NA     NA  omega  21   2   0 fullsample        1  TRUE
    61     NA    NA      NA     NA  omega   4   3   0 fullsample        1  TRUE
    62     NA    NA      NA     NA  omega   5   3   0 fullsample        1  TRUE
    63     NA    NA      NA     NA  omega   6   3   0 fullsample        1  TRUE
    64     NA    NA      NA     NA  omega   7   3   0 fullsample        1  TRUE
    65     NA    NA      NA     NA  omega   8   3   0 fullsample        1  TRUE
    66     NA    NA      NA     NA  omega   9   3   0 fullsample        1  TRUE
    67     NA    NA      NA     NA  omega  10   3   0 fullsample        1  TRUE
    68     NA    NA      NA     NA  omega  11   3   0 fullsample        1  TRUE
    69     NA    NA      NA     NA  omega  12   3   0 fullsample        1  TRUE
    70     NA    NA      NA     NA  omega  13   3   0 fullsample        1  TRUE
    71     NA    NA      NA     NA  omega  14   3   0 fullsample        1  TRUE
    72     NA    NA      NA     NA  omega  15   3   0 fullsample        1  TRUE
    73     NA    NA      NA     NA  omega  16   3   0 fullsample        1  TRUE
    74     NA    NA      NA     NA  omega  17   3   0 fullsample        1  TRUE
    75     NA    NA      NA     NA  omega  18   3   0 fullsample        1  TRUE
    76     NA    NA      NA     NA  omega  19   3   0 fullsample        1  TRUE
    77     NA    NA      NA     NA  omega  20   3   0 fullsample        1  TRUE
    78     NA    NA      NA     NA  omega  21   3   0 fullsample        1  TRUE
    79     NA    NA      NA     NA  omega   5   4   0 fullsample        1  TRUE
    80  0.057 0.000      NA     NA  omega   6   4  31 fullsample        1 FALSE
    81     NA    NA      NA     NA  omega   7   4   0 fullsample        1  TRUE
    82  0.045 0.000      NA     NA  omega   8   4  32 fullsample        1 FALSE
    83     NA    NA      NA     NA  omega   9   4   0 fullsample        1  TRUE
    84     NA    NA      NA     NA  omega  10   4   0 fullsample        1  TRUE
    85     NA    NA      NA     NA  omega  11   4   0 fullsample        1  TRUE
    86     NA    NA      NA     NA  omega  12   4   0 fullsample        1  TRUE
    87     NA    NA      NA     NA  omega  13   4   0 fullsample        1  TRUE
    88     NA    NA      NA     NA  omega  14   4   0 fullsample        1  TRUE
    89     NA    NA      NA     NA  omega  15   4   0 fullsample        1  TRUE
    90     NA    NA      NA     NA  omega  16   4   0 fullsample        1  TRUE
    91     NA    NA      NA     NA  omega  17   4   0 fullsample        1  TRUE
    92     NA    NA      NA     NA  omega  18   4   0 fullsample        1  TRUE
    93  0.048 0.000      NA     NA  omega  19   4  33 fullsample        1 FALSE
    94     NA    NA      NA     NA  omega  20   4   0 fullsample        1  TRUE
    95     NA    NA      NA     NA  omega  21   4   0 fullsample        1  TRUE
    96     NA    NA      NA     NA  omega   6   5   0 fullsample        1  TRUE
    97  0.052 0.006      NA     NA  omega   7   5  34 fullsample        1 FALSE
    98     NA    NA      NA     NA  omega   8   5   0 fullsample        1  TRUE
    99     NA    NA      NA     NA  omega   9   5   0 fullsample        1  TRUE
    100    NA    NA      NA     NA  omega  10   5   0 fullsample        1  TRUE
    101    NA    NA      NA     NA  omega  11   5   0 fullsample        1  TRUE
    102    NA    NA      NA     NA  omega  12   5   0 fullsample        1  TRUE
    103    NA    NA      NA     NA  omega  13   5   0 fullsample        1  TRUE
    104 0.044 0.001      NA     NA  omega  14   5  35 fullsample        1 FALSE
    105    NA    NA      NA     NA  omega  15   5   0 fullsample        1  TRUE
    106    NA    NA      NA     NA  omega  16   5   0 fullsample        1  TRUE
    107    NA    NA      NA     NA  omega  17   5   0 fullsample        1  TRUE
    108    NA    NA      NA     NA  omega  18   5   0 fullsample        1  TRUE
    109    NA    NA      NA     NA  omega  19   5   0 fullsample        1  TRUE
    110    NA    NA      NA     NA  omega  20   5   0 fullsample        1  TRUE
    111 0.051 0.000      NA     NA  omega  21   5  36 fullsample        1 FALSE
    112    NA    NA      NA     NA  omega   7   6   0 fullsample        1  TRUE
    113    NA    NA      NA     NA  omega   8   6   0 fullsample        1  TRUE
    114    NA    NA      NA     NA  omega   9   6   0 fullsample        1  TRUE
    115    NA    NA      NA     NA  omega  10   6   0 fullsample        1  TRUE
    116    NA    NA      NA     NA  omega  11   6   0 fullsample        1  TRUE
    117    NA    NA      NA     NA  omega  12   6   0 fullsample        1  TRUE
    118    NA    NA      NA     NA  omega  13   6   0 fullsample        1  TRUE
    119    NA    NA      NA     NA  omega  14   6   0 fullsample        1  TRUE
    120    NA    NA      NA     NA  omega  15   6   0 fullsample        1  TRUE
    121    NA    NA      NA     NA  omega  16   6   0 fullsample        1  TRUE
    122 0.060 0.004      NA     NA  omega  17   6  37 fullsample        1 FALSE
    123    NA    NA      NA     NA  omega  18   6   0 fullsample        1  TRUE
    124    NA    NA      NA     NA  omega  19   6   0 fullsample        1  TRUE
    125 0.060 0.000      NA     NA  omega  20   6  38 fullsample        1 FALSE
    126    NA    NA      NA     NA  omega  21   6   0 fullsample        1  TRUE
    127    NA    NA      NA     NA  omega   8   7   0 fullsample        1  TRUE
    128 0.057 0.000      NA     NA  omega   9   7  39 fullsample        1 FALSE
    129 0.061 0.007      NA     NA  omega  10   7  40 fullsample        1 FALSE
    130    NA    NA      NA     NA  omega  11   7   0 fullsample        1  TRUE
    131    NA    NA      NA     NA  omega  12   7   0 fullsample        1  TRUE
    132    NA    NA      NA     NA  omega  13   7   0 fullsample        1  TRUE
    133    NA    NA      NA     NA  omega  14   7   0 fullsample        1  TRUE
    134    NA    NA      NA     NA  omega  15   7   0 fullsample        1  TRUE
    135    NA    NA      NA     NA  omega  16   7   0 fullsample        1  TRUE
    136    NA    NA      NA     NA  omega  17   7   0 fullsample        1  TRUE
    137    NA    NA      NA     NA  omega  18   7   0 fullsample        1  TRUE
    138    NA    NA      NA     NA  omega  19   7   0 fullsample        1  TRUE
    139    NA    NA      NA     NA  omega  20   7   0 fullsample        1  TRUE
    140    NA    NA      NA     NA  omega  21   7   0 fullsample        1  TRUE
    141 0.056 0.000      NA     NA  omega   9   8  41 fullsample        1 FALSE
    142 0.059 0.000      NA     NA  omega  10   8  42 fullsample        1 FALSE
    143 0.051 0.010      NA     NA  omega  11   8  43 fullsample        1 FALSE
    144    NA    NA      NA     NA  omega  12   8   0 fullsample        1  TRUE
    145    NA    NA      NA     NA  omega  13   8   0 fullsample        1  TRUE
    146    NA    NA      NA     NA  omega  14   8   0 fullsample        1  TRUE
    147    NA    NA      NA     NA  omega  15   8   0 fullsample        1  TRUE
    148    NA    NA      NA     NA  omega  16   8   0 fullsample        1  TRUE
    149    NA    NA      NA     NA  omega  17   8   0 fullsample        1  TRUE
    150    NA    NA      NA     NA  omega  18   8   0 fullsample        1  TRUE
    151    NA    NA      NA     NA  omega  19   8   0 fullsample        1  TRUE
    152    NA    NA      NA     NA  omega  20   8   0 fullsample        1  TRUE
    153    NA    NA      NA     NA  omega  21   8   0 fullsample        1  TRUE
    154    NA    NA      NA     NA  omega  10   9   0 fullsample        1  TRUE
    155    NA    NA      NA     NA  omega  11   9   0 fullsample        1  TRUE
    156    NA    NA      NA     NA  omega  12   9   0 fullsample        1  TRUE
    157    NA    NA      NA     NA  omega  13   9   0 fullsample        1  TRUE
    158    NA    NA      NA     NA  omega  14   9   0 fullsample        1  TRUE
    159    NA    NA      NA     NA  omega  15   9   0 fullsample        1  TRUE
    160    NA    NA      NA     NA  omega  16   9   0 fullsample        1  TRUE
    161    NA    NA      NA     NA  omega  17   9   0 fullsample        1  TRUE
    162    NA    NA      NA     NA  omega  18   9   0 fullsample        1  TRUE
    163    NA    NA      NA     NA  omega  19   9   0 fullsample        1  TRUE
    164    NA    NA      NA     NA  omega  20   9   0 fullsample        1  TRUE
    165    NA    NA      NA     NA  omega  21   9   0 fullsample        1  TRUE
    166    NA    NA      NA     NA  omega  11  10   0 fullsample        1  TRUE
    167    NA    NA      NA     NA  omega  12  10   0 fullsample        1  TRUE
    168    NA    NA      NA     NA  omega  13  10   0 fullsample        1  TRUE
    169    NA    NA      NA     NA  omega  14  10   0 fullsample        1  TRUE
    170    NA    NA      NA     NA  omega  15  10   0 fullsample        1  TRUE
    171    NA    NA      NA     NA  omega  16  10   0 fullsample        1  TRUE
    172    NA    NA      NA     NA  omega  17  10   0 fullsample        1  TRUE
    173    NA    NA      NA     NA  omega  18  10   0 fullsample        1  TRUE
    174    NA    NA      NA     NA  omega  19  10   0 fullsample        1  TRUE
    175    NA    NA      NA     NA  omega  20  10   0 fullsample        1  TRUE
    176    NA    NA      NA     NA  omega  21  10   0 fullsample        1  TRUE
    177 0.054 0.000      NA     NA  omega  12  11  44 fullsample        1 FALSE
    178    NA    NA      NA     NA  omega  13  11   0 fullsample        1  TRUE
    179    NA    NA      NA     NA  omega  14  11   0 fullsample        1  TRUE
    180 0.041 0.000      NA     NA  omega  15  11  45 fullsample        1 FALSE
    181    NA    NA      NA     NA  omega  16  11   0 fullsample        1  TRUE
    182    NA    NA      NA     NA  omega  17  11   0 fullsample        1  TRUE
    183    NA    NA      NA     NA  omega  18  11   0 fullsample        1  TRUE
    184    NA    NA      NA     NA  omega  19  11   0 fullsample        1  TRUE
    185    NA    NA      NA     NA  omega  20  11   0 fullsample        1  TRUE
    186    NA    NA      NA     NA  omega  21  11   0 fullsample        1  TRUE
    187    NA    NA      NA     NA  omega  13  12   0 fullsample        1  TRUE
    188    NA    NA      NA     NA  omega  14  12   0 fullsample        1  TRUE
    189    NA    NA      NA     NA  omega  15  12   0 fullsample        1  TRUE
    190    NA    NA      NA     NA  omega  16  12   0 fullsample        1  TRUE
    191 0.062 0.020      NA     NA  omega  17  12  46 fullsample        1 FALSE
    192 0.044 0.000      NA     NA  omega  18  12  47 fullsample        1 FALSE
    193    NA    NA      NA     NA  omega  19  12   0 fullsample        1  TRUE
    194    NA    NA      NA     NA  omega  20  12   0 fullsample        1  TRUE
    195    NA    NA      NA     NA  omega  21  12   0 fullsample        1  TRUE
    196 0.055 0.000      NA     NA  omega  14  13  48 fullsample        1 FALSE
    197 0.066 0.000      NA     NA  omega  15  13  49 fullsample        1 FALSE
    198    NA    NA      NA     NA  omega  16  13   0 fullsample        1  TRUE
    199    NA    NA      NA     NA  omega  17  13   0 fullsample        1  TRUE
    200    NA    NA      NA     NA  omega  18  13   0 fullsample        1  TRUE
    201    NA    NA      NA     NA  omega  19  13   0 fullsample        1  TRUE
    202    NA    NA      NA     NA  omega  20  13   0 fullsample        1  TRUE
    203    NA    NA      NA     NA  omega  21  13   0 fullsample        1  TRUE
    204 0.055 0.000      NA     NA  omega  15  14  50 fullsample        1 FALSE
    205    NA    NA      NA     NA  omega  16  14   0 fullsample        1  TRUE
    206 0.044 0.000      NA     NA  omega  17  14  51 fullsample        1 FALSE
    207    NA    NA      NA     NA  omega  18  14   0 fullsample        1  TRUE
    208    NA    NA      NA     NA  omega  19  14   0 fullsample        1  TRUE
    209    NA    NA      NA     NA  omega  20  14   0 fullsample        1  TRUE
    210    NA    NA      NA     NA  omega  21  14   0 fullsample        1  TRUE
    211 0.047 0.000      NA     NA  omega  16  15  52 fullsample        1 FALSE
    212    NA    NA      NA     NA  omega  17  15   0 fullsample        1  TRUE
    213    NA    NA      NA     NA  omega  18  15   0 fullsample        1  TRUE
    214    NA    NA      NA     NA  omega  19  15   0 fullsample        1  TRUE
    215    NA    NA      NA     NA  omega  20  15   0 fullsample        1  TRUE
    216    NA    NA      NA     NA  omega  21  15   0 fullsample        1  TRUE
    217    NA    NA      NA     NA  omega  17  16   0 fullsample        1  TRUE
    218    NA    NA      NA     NA  omega  18  16   0 fullsample        1  TRUE
    219    NA    NA      NA     NA  omega  19  16   0 fullsample        1  TRUE
    220    NA    NA      NA     NA  omega  20  16   0 fullsample        1  TRUE
    221    NA    NA      NA     NA  omega  21  16   0 fullsample        1  TRUE
    222 0.050 0.000      NA     NA  omega  18  17  53 fullsample        1 FALSE
    223    NA    NA      NA     NA  omega  19  17   0 fullsample        1  TRUE
    224    NA    NA      NA     NA  omega  20  17   0 fullsample        1  TRUE
    225    NA    NA      NA     NA  omega  21  17   0 fullsample        1  TRUE
    226 0.056 0.000      NA     NA  omega  19  18  54 fullsample        1 FALSE
    227    NA    NA      NA     NA  omega  20  18   0 fullsample        1  TRUE
    228 0.062 0.000      NA     NA  omega  21  18  55 fullsample        1 FALSE
    229 0.060 0.001      NA     NA  omega  20  19  56 fullsample        1 FALSE
    230 0.067 0.000      NA     NA  omega  21  19  57 fullsample        1 FALSE
    231 0.065 0.001      NA     NA  omega  21  20  58 fullsample        1 FALSE
    232 0.036 0.000      NA     NA  delta   1   1  59 fullsample        1 FALSE
    233 0.039 0.000      NA     NA  delta   2   2  60 fullsample        1 FALSE
    234 0.031 0.000      NA     NA  delta   3   3  61 fullsample        1 FALSE
    235 0.047 0.000      NA     NA  delta   4   4  62 fullsample        1 FALSE
    236 0.036 0.000      NA     NA  delta   5   5  63 fullsample        1 FALSE
    237 0.055 0.000      NA     NA  delta   6   6  64 fullsample        1 FALSE
    238 0.054 0.000      NA     NA  delta   7   7  65 fullsample        1 FALSE
    239 0.046 0.000      NA     NA  delta   8   8  66 fullsample        1 FALSE
    240 0.052 0.000      NA     NA  delta   9   9  67 fullsample        1 FALSE
    241 0.058 0.000      NA     NA  delta  10  10  68 fullsample        1 FALSE
    242 0.039 0.000      NA     NA  delta  11  11  69 fullsample        1 FALSE
    243 0.044 0.000      NA     NA  delta  12  12  70 fullsample        1 FALSE
    244 0.030 0.000      NA     NA  delta  13  13  71 fullsample        1 FALSE
    245 0.019 0.000      NA     NA  delta  14  14  72 fullsample        1 FALSE
    246 0.017 0.000      NA     NA  delta  15  15  73 fullsample        1 FALSE
    247 0.020 0.000      NA     NA  delta  16  16  74 fullsample        1 FALSE
    248 0.055 0.000      NA     NA  delta  17  17  75 fullsample        1 FALSE
    249 0.035 0.000      NA     NA  delta  18  18  76 fullsample        1 FALSE
    250 0.039 0.000      NA     NA  delta  19  19  77 fullsample        1 FALSE
    251 0.050 0.000      NA     NA  delta  20  20  78 fullsample        1 FALSE
    252 0.042 0.000      NA     NA  delta  21  21  79 fullsample        1 FALSE
           mi   pmi    epc mi_free pmi_free epc_free mi_equal pmi_equal epc_equal
    1   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    2   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    3   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    4   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    5   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    6   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    7   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    8   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    9   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    10  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    11  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    12  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    13  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    14  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    15  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    16  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    17  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    18  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    19  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    20  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    21  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    22  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    23  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    24  0.059 0.808  0.014      NA       NA       NA       NA        NA        NA
    25  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    26  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    27  0.048 0.827  0.010      NA       NA       NA       NA        NA        NA
    28  1.013 0.314  0.046      NA       NA       NA       NA        NA        NA
    29  0.016 0.900 -0.005      NA       NA       NA       NA        NA        NA
    30  0.697 0.404  0.037      NA       NA       NA       NA        NA        NA
    31  3.059 0.080  0.078      NA       NA       NA       NA        NA        NA
    32  0.736 0.391  0.038      NA       NA       NA       NA        NA        NA
    33  1.413 0.235  0.049      NA       NA       NA       NA        NA        NA
    34  0.247 0.620 -0.021      NA       NA       NA       NA        NA        NA
    35  0.365 0.546 -0.026      NA       NA       NA       NA        NA        NA
    36  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    37  0.892 0.345 -0.050      NA       NA       NA       NA        NA        NA
    38  0.024 0.878  0.006      NA       NA       NA       NA        NA        NA
    39  5.033 0.025  0.092      NA       NA       NA       NA        NA        NA
    40  2.115 0.146  0.075      NA       NA       NA       NA        NA        NA
    41  1.616 0.204  0.057      NA       NA       NA       NA        NA        NA
    42  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    43  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    44  1.434 0.231 -0.075      NA       NA       NA       NA        NA        NA
    45  0.199 0.656 -0.030      NA       NA       NA       NA        NA        NA
    46  0.209 0.648 -0.021      NA       NA       NA       NA        NA        NA
    47  0.238 0.625 -0.027      NA       NA       NA       NA        NA        NA
    48  0.183 0.669 -0.018      NA       NA       NA       NA        NA        NA
    49  0.071 0.790  0.012      NA       NA       NA       NA        NA        NA
    50  2.757 0.097 -0.081      NA       NA       NA       NA        NA        NA
    51  4.383 0.036 -0.110      NA       NA       NA       NA        NA        NA
    52  0.670 0.413  0.045      NA       NA       NA       NA        NA        NA
    53  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    54  0.003 0.956  0.003      NA       NA       NA       NA        NA        NA
    55  0.046 0.830  0.012      NA       NA       NA       NA        NA        NA
    56  0.626 0.429 -0.049      NA       NA       NA       NA        NA        NA
    57  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    58  0.020 0.888  0.009      NA       NA       NA       NA        NA        NA
    59  0.368 0.544  0.034      NA       NA       NA       NA        NA        NA
    60  0.018 0.894 -0.008      NA       NA       NA       NA        NA        NA
    61  1.333 0.248  0.066      NA       NA       NA       NA        NA        NA
    62  0.151 0.698  0.027      NA       NA       NA       NA        NA        NA
    63  0.771 0.380 -0.059      NA       NA       NA       NA        NA        NA
    64  2.122 0.145  0.071      NA       NA       NA       NA        NA        NA
    65  3.252 0.071  0.088      NA       NA       NA       NA        NA        NA
    66  0.328 0.567  0.026      NA       NA       NA       NA        NA        NA
    67  2.370 0.124  0.076      NA       NA       NA       NA        NA        NA
    68  1.258 0.262  0.054      NA       NA       NA       NA        NA        NA
    69  0.305 0.581 -0.026      NA       NA       NA       NA        NA        NA
    70  1.299 0.254  0.049      NA       NA       NA       NA        NA        NA
    71  0.000 0.986  0.001      NA       NA       NA       NA        NA        NA
    72  0.336 0.562  0.024      NA       NA       NA       NA        NA        NA
    73  1.700 0.192  0.085      NA       NA       NA       NA        NA        NA
    74  0.014 0.906  0.006      NA       NA       NA       NA        NA        NA
    75  0.863 0.353  0.040      NA       NA       NA       NA        NA        NA
    76  2.047 0.153  0.060      NA       NA       NA       NA        NA        NA
    77  0.158 0.691  0.021      NA       NA       NA       NA        NA        NA
    78  1.628 0.202  0.058      NA       NA       NA       NA        NA        NA
    79  0.961 0.327 -0.055      NA       NA       NA       NA        NA        NA
    80  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    81  0.309 0.579  0.026      NA       NA       NA       NA        NA        NA
    82  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    83  0.007 0.934  0.004      NA       NA       NA       NA        NA        NA
    84  0.188 0.664  0.023      NA       NA       NA       NA        NA        NA
    85  1.029 0.310 -0.049      NA       NA       NA       NA        NA        NA
    86  0.006 0.941 -0.004      NA       NA       NA       NA        NA        NA
    87  0.625 0.429 -0.032      NA       NA       NA       NA        NA        NA
    88  0.523 0.469 -0.030      NA       NA       NA       NA        NA        NA
    89  0.992 0.319 -0.038      NA       NA       NA       NA        NA        NA
    90  1.288 0.256 -0.054      NA       NA       NA       NA        NA        NA
    91  1.720 0.190  0.079      NA       NA       NA       NA        NA        NA
    92  1.657 0.198 -0.078      NA       NA       NA       NA        NA        NA
    93  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    94  2.617 0.106  0.104      NA       NA       NA       NA        NA        NA
    95  0.176 0.675  0.024      NA       NA       NA       NA        NA        NA
    96  0.018 0.893  0.009      NA       NA       NA       NA        NA        NA
    97  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    98  3.876 0.049  0.110      NA       NA       NA       NA        NA        NA
    99  0.449 0.503  0.041      NA       NA       NA       NA        NA        NA
    100 3.167 0.075  0.103      NA       NA       NA       NA        NA        NA
    101 2.838 0.092  0.095      NA       NA       NA       NA        NA        NA
    102 0.182 0.670  0.024      NA       NA       NA       NA        NA        NA
    103 0.034 0.855  0.012      NA       NA       NA       NA        NA        NA
    104 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    105 0.626 0.429 -0.048      NA       NA       NA       NA        NA        NA
    106 0.456 0.500  0.044      NA       NA       NA       NA        NA        NA
    107 0.599 0.439  0.052      NA       NA       NA       NA        NA        NA
    108 0.376 0.540 -0.035      NA       NA       NA       NA        NA        NA
    109 0.864 0.353 -0.053      NA       NA       NA       NA        NA        NA
    110 2.222 0.136  0.097      NA       NA       NA       NA        NA        NA
    111 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    112 0.644 0.422  0.040      NA       NA       NA       NA        NA        NA
    113 4.867 0.027  0.129      NA       NA       NA       NA        NA        NA
    114 0.124 0.724 -0.017      NA       NA       NA       NA        NA        NA
    115 0.035 0.851  0.010      NA       NA       NA       NA        NA        NA
    116 0.367 0.545  0.032      NA       NA       NA       NA        NA        NA
    117 0.125 0.724 -0.020      NA       NA       NA       NA        NA        NA
    118 1.736 0.188  0.059      NA       NA       NA       NA        NA        NA
    119 0.064 0.800 -0.011      NA       NA       NA       NA        NA        NA
    120 0.324 0.569  0.024      NA       NA       NA       NA        NA        NA
    121 0.103 0.749 -0.018      NA       NA       NA       NA        NA        NA
    122 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    123 0.177 0.674 -0.022      NA       NA       NA       NA        NA        NA
    124 0.700 0.403  0.047      NA       NA       NA       NA        NA        NA
    125 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    126 0.419 0.518  0.037      NA       NA       NA       NA        NA        NA
    127 2.131 0.144  0.102      NA       NA       NA       NA        NA        NA
    128 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    129 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    130 0.098 0.754  0.016      NA       NA       NA       NA        NA        NA
    131 0.146 0.703  0.019      NA       NA       NA       NA        NA        NA
    132 0.818 0.366  0.038      NA       NA       NA       NA        NA        NA
    133 1.410 0.235  0.045      NA       NA       NA       NA        NA        NA
    134 0.026 0.873  0.006      NA       NA       NA       NA        NA        NA
    135 0.274 0.601  0.027      NA       NA       NA       NA        NA        NA
    136 1.923 0.166  0.072      NA       NA       NA       NA        NA        NA
    137 0.017 0.896  0.005      NA       NA       NA       NA        NA        NA
    138 0.359 0.549 -0.023      NA       NA       NA       NA        NA        NA
    139 3.842 0.050  0.099      NA       NA       NA       NA        NA        NA
    140 0.179 0.672  0.019      NA       NA       NA       NA        NA        NA
    141 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    142 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    143 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    144 0.570 0.450  0.045      NA       NA       NA       NA        NA        NA
    145 3.401 0.065  0.077      NA       NA       NA       NA        NA        NA
    146 1.508 0.219  0.046      NA       NA       NA       NA        NA        NA
    147 2.993 0.084  0.070      NA       NA       NA       NA        NA        NA
    148 1.158 0.282  0.054      NA       NA       NA       NA        NA        NA
    149 0.842 0.359  0.050      NA       NA       NA       NA        NA        NA
    150 1.545 0.214  0.053      NA       NA       NA       NA        NA        NA
    151 0.985 0.321  0.046      NA       NA       NA       NA        NA        NA
    152 3.703 0.054  0.102      NA       NA       NA       NA        NA        NA
    153 0.648 0.421  0.037      NA       NA       NA       NA        NA        NA
    154 2.236 0.135  0.114      NA       NA       NA       NA        NA        NA
    155 0.115 0.735 -0.018      NA       NA       NA       NA        NA        NA
    156 0.043 0.835  0.010      NA       NA       NA       NA        NA        NA
    157 0.013 0.908 -0.005      NA       NA       NA       NA        NA        NA
    158 1.049 0.306  0.035      NA       NA       NA       NA        NA        NA
    159 0.953 0.329  0.036      NA       NA       NA       NA        NA        NA
    160 0.460 0.498  0.033      NA       NA       NA       NA        NA        NA
    161 0.011 0.916  0.005      NA       NA       NA       NA        NA        NA
    162 0.299 0.584  0.020      NA       NA       NA       NA        NA        NA
    163 0.122 0.727  0.013      NA       NA       NA       NA        NA        NA
    164 2.103 0.147  0.071      NA       NA       NA       NA        NA        NA
    165 0.198 0.656  0.018      NA       NA       NA       NA        NA        NA
    166 0.162 0.687 -0.025      NA       NA       NA       NA        NA        NA
    167 1.675 0.196  0.069      NA       NA       NA       NA        NA        NA
    168 0.127 0.721  0.015      NA       NA       NA       NA        NA        NA
    169 1.559 0.212  0.045      NA       NA       NA       NA        NA        NA
    170 3.026 0.082  0.068      NA       NA       NA       NA        NA        NA
    171 4.467 0.035  0.110      NA       NA       NA       NA        NA        NA
    172 0.098 0.754  0.017      NA       NA       NA       NA        NA        NA
    173 0.054 0.816  0.009      NA       NA       NA       NA        NA        NA
    174 0.024 0.876 -0.006      NA       NA       NA       NA        NA        NA
    175 2.017 0.156  0.074      NA       NA       NA       NA        NA        NA
    176 0.028 0.866  0.007      NA       NA       NA       NA        NA        NA
    177 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    178 1.956 0.162 -0.078      NA       NA       NA       NA        NA        NA
    179 3.175 0.075 -0.094      NA       NA       NA       NA        NA        NA
    180 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    181 1.301 0.254  0.073      NA       NA       NA       NA        NA        NA
    182 0.763 0.382 -0.058      NA       NA       NA       NA        NA        NA
    183 0.724 0.395 -0.039      NA       NA       NA       NA        NA        NA
    184 0.001 0.981 -0.001      NA       NA       NA       NA        NA        NA
    185 0.342 0.559 -0.030      NA       NA       NA       NA        NA        NA
    186 0.009 0.925  0.004      NA       NA       NA       NA        NA        NA
    187 2.647 0.104 -0.075      NA       NA       NA       NA        NA        NA
    188 5.059 0.024 -0.097      NA       NA       NA       NA        NA        NA
    189 3.602 0.058 -0.090      NA       NA       NA       NA        NA        NA
    190 0.673 0.412 -0.044      NA       NA       NA       NA        NA        NA
    191 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    192 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    193 0.981 0.322  0.057      NA       NA       NA       NA        NA        NA
    194 0.005 0.942 -0.004      NA       NA       NA       NA        NA        NA
    195 0.593 0.441  0.045      NA       NA       NA       NA        NA        NA
    196 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    197 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    198 0.021 0.885  0.010      NA       NA       NA       NA        NA        NA
    199 2.389 0.122  0.104      NA       NA       NA       NA        NA        NA
    200 1.884 0.170  0.048      NA       NA       NA       NA        NA        NA
    201 0.018 0.892  0.005      NA       NA       NA       NA        NA        NA
    202 1.127 0.289  0.045      NA       NA       NA       NA        NA        NA
    203 0.124 0.725  0.013      NA       NA       NA       NA        NA        NA
    204 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    205 0.008 0.928  0.006      NA       NA       NA       NA        NA        NA
    206 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    207 2.205 0.138 -0.053      NA       NA       NA       NA        NA        NA
    208 2.845 0.092 -0.056      NA       NA       NA       NA        NA        NA
    209 0.371 0.542  0.024      NA       NA       NA       NA        NA        NA
    210 3.708 0.054 -0.070      NA       NA       NA       NA        NA        NA
    211 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    212 0.022 0.881  0.009      NA       NA       NA       NA        NA        NA
    213 1.558 0.212 -0.041      NA       NA       NA       NA        NA        NA
    214 2.601 0.107 -0.051      NA       NA       NA       NA        NA        NA
    215 0.037 0.847  0.008      NA       NA       NA       NA        NA        NA
    216 1.504 0.220 -0.043      NA       NA       NA       NA        NA        NA
    217 1.209 0.272 -0.066      NA       NA       NA       NA        NA        NA
    218 4.212 0.040 -0.082      NA       NA       NA       NA        NA        NA
    219 3.807 0.051 -0.077      NA       NA       NA       NA        NA        NA
    220 1.351 0.245 -0.059      NA       NA       NA       NA        NA        NA
    221 0.607 0.436 -0.034      NA       NA       NA       NA        NA        NA
    222 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    223 2.155 0.142  0.094      NA       NA       NA       NA        NA        NA
    224 2.968 0.085  0.113      NA       NA       NA       NA        NA        NA
    225 2.185 0.139  0.095      NA       NA       NA       NA        NA        NA
    226 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    227 1.158 0.282  0.075      NA       NA       NA       NA        NA        NA
    228 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    229 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    230 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    231 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    232 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    233 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    234 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    235 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    236 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    237 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    238 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    239 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    240 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    241 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    242 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    243 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    244 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    245 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    246 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    247 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    248 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    249 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    250 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    251 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    252 0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
        minimum maximum identified
    1      -Inf     Inf      FALSE
    2      -Inf     Inf      FALSE
    3      -Inf     Inf      FALSE
    4      -Inf     Inf      FALSE
    5      -Inf     Inf      FALSE
    6      -Inf     Inf      FALSE
    7      -Inf     Inf      FALSE
    8      -Inf     Inf      FALSE
    9      -Inf     Inf      FALSE
    10     -Inf     Inf      FALSE
    11     -Inf     Inf      FALSE
    12     -Inf     Inf      FALSE
    13     -Inf     Inf      FALSE
    14     -Inf     Inf      FALSE
    15     -Inf     Inf      FALSE
    16     -Inf     Inf      FALSE
    17     -Inf     Inf      FALSE
    18     -Inf     Inf      FALSE
    19     -Inf     Inf      FALSE
    20     -Inf     Inf      FALSE
    21     -Inf     Inf      FALSE
    22       -1       1      FALSE
    23       -1       1      FALSE
    24       -1       1      FALSE
    25       -1       1      FALSE
    26       -1       1      FALSE
    27       -1       1      FALSE
    28       -1       1      FALSE
    29       -1       1      FALSE
    30       -1       1      FALSE
    31       -1       1      FALSE
    32       -1       1      FALSE
    33       -1       1      FALSE
    34       -1       1      FALSE
    35       -1       1      FALSE
    36       -1       1      FALSE
    37       -1       1      FALSE
    38       -1       1      FALSE
    39       -1       1      FALSE
    40       -1       1      FALSE
    41       -1       1      FALSE
    42       -1       1      FALSE
    43       -1       1      FALSE
    44       -1       1      FALSE
    45       -1       1      FALSE
    46       -1       1      FALSE
    47       -1       1      FALSE
    48       -1       1      FALSE
    49       -1       1      FALSE
    50       -1       1      FALSE
    51       -1       1      FALSE
    52       -1       1      FALSE
    53       -1       1      FALSE
    54       -1       1      FALSE
    55       -1       1      FALSE
    56       -1       1      FALSE
    57       -1       1      FALSE
    58       -1       1      FALSE
    59       -1       1      FALSE
    60       -1       1      FALSE
    61       -1       1      FALSE
    62       -1       1      FALSE
    63       -1       1      FALSE
    64       -1       1      FALSE
    65       -1       1      FALSE
    66       -1       1      FALSE
    67       -1       1      FALSE
    68       -1       1      FALSE
    69       -1       1      FALSE
    70       -1       1      FALSE
    71       -1       1      FALSE
    72       -1       1      FALSE
    73       -1       1      FALSE
    74       -1       1      FALSE
    75       -1       1      FALSE
    76       -1       1      FALSE
    77       -1       1      FALSE
    78       -1       1      FALSE
    79       -1       1      FALSE
    80       -1       1      FALSE
    81       -1       1      FALSE
    82       -1       1      FALSE
    83       -1       1      FALSE
    84       -1       1      FALSE
    85       -1       1      FALSE
    86       -1       1      FALSE
    87       -1       1      FALSE
    88       -1       1      FALSE
    89       -1       1      FALSE
    90       -1       1      FALSE
    91       -1       1      FALSE
    92       -1       1      FALSE
    93       -1       1      FALSE
    94       -1       1      FALSE
    95       -1       1      FALSE
    96       -1       1      FALSE
    97       -1       1      FALSE
    98       -1       1      FALSE
    99       -1       1      FALSE
    100      -1       1      FALSE
    101      -1       1      FALSE
    102      -1       1      FALSE
    103      -1       1      FALSE
    104      -1       1      FALSE
    105      -1       1      FALSE
    106      -1       1      FALSE
    107      -1       1      FALSE
    108      -1       1      FALSE
    109      -1       1      FALSE
    110      -1       1      FALSE
    111      -1       1      FALSE
    112      -1       1      FALSE
    113      -1       1      FALSE
    114      -1       1      FALSE
    115      -1       1      FALSE
    116      -1       1      FALSE
    117      -1       1      FALSE
    118      -1       1      FALSE
    119      -1       1      FALSE
    120      -1       1      FALSE
    121      -1       1      FALSE
    122      -1       1      FALSE
    123      -1       1      FALSE
    124      -1       1      FALSE
    125      -1       1      FALSE
    126      -1       1      FALSE
    127      -1       1      FALSE
    128      -1       1      FALSE
    129      -1       1      FALSE
    130      -1       1      FALSE
    131      -1       1      FALSE
    132      -1       1      FALSE
    133      -1       1      FALSE
    134      -1       1      FALSE
    135      -1       1      FALSE
    136      -1       1      FALSE
    137      -1       1      FALSE
    138      -1       1      FALSE
    139      -1       1      FALSE
    140      -1       1      FALSE
    141      -1       1      FALSE
    142      -1       1      FALSE
    143      -1       1      FALSE
    144      -1       1      FALSE
    145      -1       1      FALSE
    146      -1       1      FALSE
    147      -1       1      FALSE
    148      -1       1      FALSE
    149      -1       1      FALSE
    150      -1       1      FALSE
    151      -1       1      FALSE
    152      -1       1      FALSE
    153      -1       1      FALSE
    154      -1       1      FALSE
    155      -1       1      FALSE
    156      -1       1      FALSE
    157      -1       1      FALSE
    158      -1       1      FALSE
    159      -1       1      FALSE
    160      -1       1      FALSE
    161      -1       1      FALSE
    162      -1       1      FALSE
    163      -1       1      FALSE
    164      -1       1      FALSE
    165      -1       1      FALSE
    166      -1       1      FALSE
    167      -1       1      FALSE
    168      -1       1      FALSE
    169      -1       1      FALSE
    170      -1       1      FALSE
    171      -1       1      FALSE
    172      -1       1      FALSE
    173      -1       1      FALSE
    174      -1       1      FALSE
    175      -1       1      FALSE
    176      -1       1      FALSE
    177      -1       1      FALSE
    178      -1       1      FALSE
    179      -1       1      FALSE
    180      -1       1      FALSE
    181      -1       1      FALSE
    182      -1       1      FALSE
    183      -1       1      FALSE
    184      -1       1      FALSE
    185      -1       1      FALSE
    186      -1       1      FALSE
    187      -1       1      FALSE
    188      -1       1      FALSE
    189      -1       1      FALSE
    190      -1       1      FALSE
    191      -1       1      FALSE
    192      -1       1      FALSE
    193      -1       1      FALSE
    194      -1       1      FALSE
    195      -1       1      FALSE
    196      -1       1      FALSE
    197      -1       1      FALSE
    198      -1       1      FALSE
    199      -1       1      FALSE
    200      -1       1      FALSE
    201      -1       1      FALSE
    202      -1       1      FALSE
    203      -1       1      FALSE
    204      -1       1      FALSE
    205      -1       1      FALSE
    206      -1       1      FALSE
    207      -1       1      FALSE
    208      -1       1      FALSE
    209      -1       1      FALSE
    210      -1       1      FALSE
    211      -1       1      FALSE
    212      -1       1      FALSE
    213      -1       1      FALSE
    214      -1       1      FALSE
    215      -1       1      FALSE
    216      -1       1      FALSE
    217      -1       1      FALSE
    218      -1       1      FALSE
    219      -1       1      FALSE
    220      -1       1      FALSE
    221      -1       1      FALSE
    222      -1       1      FALSE
    223      -1       1      FALSE
    224      -1       1      FALSE
    225      -1       1      FALSE
    226      -1       1      FALSE
    227      -1       1      FALSE
    228      -1       1      FALSE
    229      -1       1      FALSE
    230      -1       1      FALSE
    231      -1       1      FALSE
    232       0     Inf      FALSE
    233       0     Inf      FALSE
    234       0     Inf      FALSE
    235       0     Inf      FALSE
    236       0     Inf      FALSE
    237       0     Inf      FALSE
    238       0     Inf      FALSE
    239       0     Inf      FALSE
    240       0     Inf      FALSE
    241       0     Inf      FALSE
    242       0     Inf      FALSE
    243       0     Inf      FALSE
    244       0     Inf      FALSE
    245       0     Inf      FALSE
    246       0     Inf      FALSE
    247       0     Inf      FALSE
    248       0     Inf      FALSE
    249       0     Inf      FALSE
    250       0     Inf      FALSE
    251       0     Inf      FALSE
    252       0     Inf      FALSE

### Network Figures

``` r
knitr::include_graphics("./figures/hahnel_irma-network_train.png")
```

![](./figures/hahnel_irma-network_train.png)

``` r
knitr::include_graphics("./figures/hahnel_irma-network_train_walktrap.png")
```

![](./figures/hahnel_irma-network_train_walktrap.png)

## Test Network

### Fit Indices

``` r
network_fit_ind_1_test %>% 
  mutate(across(where(is.numeric), round, 6))
```

                                Measure        Value
    logl                           logl -4083.454931
    unrestricted.logl unrestricted.logl -3909.394032
    baseline.logl         baseline.logl -4948.991442
    nvar                           nvar    21.000000
    nobs                           nobs   252.000000
    npar                           npar    79.000000
    df                               df   173.000000
    objective                 objective    11.817605
    chisq                         chisq   348.121797
    pvalue                       pvalue     0.000000
    baseline.chisq       baseline.chisq  2079.194820
    baseline.df             baseline.df   210.000000
    baseline.pvalue     baseline.pvalue     0.000000
    nfi                             nfi     0.832569
    pnfi                           pnfi     0.685878
    tli                             tli     0.886274
    nnfi                           nnfi     0.886274
    rfi                             rfi     0.796760
    ifi                             ifi     0.908130
    rni                             rni     0.906312
    cfi                             cfi     0.906312
    rmsea                         rmsea     0.079048
    rmsea.ci.lower       rmsea.ci.lower     0.066988
    rmsea.ci.upper       rmsea.ci.upper     0.091036
    rmsea.pvalue           rmsea.pvalue     0.000083
    aic.ll                       aic.ll  8324.909861
    aic.ll2                     aic.ll2  8479.056203
    aic.x                         aic.x     2.121797
    aic.x2                       aic.x2   506.121797
    bic                             bic  8568.829972
    bic2                           bic2  8318.733056
    ebic.25                     ebic.25  8809.347244
    ebic.5                       ebic.5  9049.864517
    ebic.75                     ebic.75  9242.278335
    ebic1                         ebic1  9530.899062

### Parameter Estimates

``` r
network_pars_1_test %>% 
  mutate(across(where(is.numeric), round, 3))
```

                        var1 var1_id  op                 var2 var2_id   est std
    1         Asked_for_it_1       1  ~1                 <NA>      NA 1.704  NA
    2         Asked_for_it_2       2  ~1                 <NA>      NA 1.704  NA
    3         Asked_for_it_3       3  ~1                 <NA>      NA 1.389  NA
    4         Asked_for_it_4       4  ~1                 <NA>      NA 2.358  NA
    5         Asked_for_it_5       5  ~1                 <NA>      NA 1.525  NA
    6         Asked_for_it_6       6  ~1                 <NA>      NA 2.926  NA
    7       didn_t_mean_to_7       7  ~1                 <NA>      NA 2.463  NA
    8       didn_t_mean_to_8       8  ~1                 <NA>      NA 2.191  NA
    9       didn_t_mean_to_9       9  ~1                 <NA>      NA 1.920  NA
    10     didn_t_mean_to_10      10  ~1                 <NA>      NA 2.167  NA
    11     didn_t_mean_to_11      11  ~1                 <NA>      NA 1.494  NA
    12  wasnt_really_rape_12      12  ~1                 <NA>      NA 1.938  NA
    13  wasnt_really_rape_13      13  ~1                 <NA>      NA 1.377  NA
    14  wasnt_really_rape_14      14  ~1                 <NA>      NA 1.228  NA
    15  wasnt_really_rape_15      15  ~1                 <NA>      NA 1.148  NA
    16  Wasnt_really_rape_16      16  ~1                 <NA>      NA 1.062  NA
    17           She_lied_17      17  ~1                 <NA>      NA 2.167  NA
    18           She_lied_18      18  ~1                 <NA>      NA 2.389  NA
    19           She_lied_19      19  ~1                 <NA>      NA 2.531  NA
    20           She_lied_20      20  ~1                 <NA>      NA 2.438  NA
    21           She_lied_21      21  ~1                 <NA>      NA 2.728  NA
    22        Asked_for_it_2       2  --       Asked_for_it_1       1 0.155  NA
    23        Asked_for_it_3       3  --       Asked_for_it_1       1 0.302  NA
    24        Asked_for_it_4       4  --       Asked_for_it_1       1 0.000  NA
    25        Asked_for_it_5       5  --       Asked_for_it_1       1 0.220  NA
    26        Asked_for_it_6       6  --       Asked_for_it_1       1 0.190  NA
    27      didn_t_mean_to_7       7  --       Asked_for_it_1       1 0.000  NA
    28      didn_t_mean_to_8       8  --       Asked_for_it_1       1 0.000  NA
    29      didn_t_mean_to_9       9  --       Asked_for_it_1       1 0.000  NA
    30     didn_t_mean_to_10      10  --       Asked_for_it_1       1 0.000  NA
    31     didn_t_mean_to_11      11  --       Asked_for_it_1       1 0.000  NA
    32  wasnt_really_rape_12      12  --       Asked_for_it_1       1 0.000  NA
    33  wasnt_really_rape_13      13  --       Asked_for_it_1       1 0.000  NA
    34  wasnt_really_rape_14      14  --       Asked_for_it_1       1 0.000  NA
    35  wasnt_really_rape_15      15  --       Asked_for_it_1       1 0.000  NA
    36  Wasnt_really_rape_16      16  --       Asked_for_it_1       1 0.229  NA
    37           She_lied_17      17  --       Asked_for_it_1       1 0.000  NA
    38           She_lied_18      18  --       Asked_for_it_1       1 0.000  NA
    39           She_lied_19      19  --       Asked_for_it_1       1 0.000  NA
    40           She_lied_20      20  --       Asked_for_it_1       1 0.000  NA
    41           She_lied_21      21  --       Asked_for_it_1       1 0.000  NA
    42        Asked_for_it_3       3  --       Asked_for_it_2       2 0.303  NA
    43        Asked_for_it_4       4  --       Asked_for_it_2       2 0.319  NA
    44        Asked_for_it_5       5  --       Asked_for_it_2       2 0.000  NA
    45        Asked_for_it_6       6  --       Asked_for_it_2       2 0.000  NA
    46      didn_t_mean_to_7       7  --       Asked_for_it_2       2 0.000  NA
    47      didn_t_mean_to_8       8  --       Asked_for_it_2       2 0.000  NA
    48      didn_t_mean_to_9       9  --       Asked_for_it_2       2 0.000  NA
    49     didn_t_mean_to_10      10  --       Asked_for_it_2       2 0.000  NA
    50     didn_t_mean_to_11      11  --       Asked_for_it_2       2 0.000  NA
    51  wasnt_really_rape_12      12  --       Asked_for_it_2       2 0.000  NA
    52  wasnt_really_rape_13      13  --       Asked_for_it_2       2 0.000  NA
    53  wasnt_really_rape_14      14  --       Asked_for_it_2       2 0.258  NA
    54  wasnt_really_rape_15      15  --       Asked_for_it_2       2 0.000  NA
    55  Wasnt_really_rape_16      16  --       Asked_for_it_2       2 0.000  NA
    56           She_lied_17      17  --       Asked_for_it_2       2 0.000  NA
    57           She_lied_18      18  --       Asked_for_it_2       2 0.131  NA
    58           She_lied_19      19  --       Asked_for_it_2       2 0.000  NA
    59           She_lied_20      20  --       Asked_for_it_2       2 0.000  NA
    60           She_lied_21      21  --       Asked_for_it_2       2 0.000  NA
    61        Asked_for_it_4       4  --       Asked_for_it_3       3 0.000  NA
    62        Asked_for_it_5       5  --       Asked_for_it_3       3 0.000  NA
    63        Asked_for_it_6       6  --       Asked_for_it_3       3 0.000  NA
    64      didn_t_mean_to_7       7  --       Asked_for_it_3       3 0.000  NA
    65      didn_t_mean_to_8       8  --       Asked_for_it_3       3 0.000  NA
    66      didn_t_mean_to_9       9  --       Asked_for_it_3       3 0.000  NA
    67     didn_t_mean_to_10      10  --       Asked_for_it_3       3 0.000  NA
    68     didn_t_mean_to_11      11  --       Asked_for_it_3       3 0.000  NA
    69  wasnt_really_rape_12      12  --       Asked_for_it_3       3 0.000  NA
    70  wasnt_really_rape_13      13  --       Asked_for_it_3       3 0.000  NA
    71  wasnt_really_rape_14      14  --       Asked_for_it_3       3 0.000  NA
    72  wasnt_really_rape_15      15  --       Asked_for_it_3       3 0.000  NA
    73  Wasnt_really_rape_16      16  --       Asked_for_it_3       3 0.000  NA
    74           She_lied_17      17  --       Asked_for_it_3       3 0.000  NA
    75           She_lied_18      18  --       Asked_for_it_3       3 0.000  NA
    76           She_lied_19      19  --       Asked_for_it_3       3 0.000  NA
    77           She_lied_20      20  --       Asked_for_it_3       3 0.000  NA
    78           She_lied_21      21  --       Asked_for_it_3       3 0.000  NA
    79        Asked_for_it_5       5  --       Asked_for_it_4       4 0.000  NA
    80        Asked_for_it_6       6  --       Asked_for_it_4       4 0.298  NA
    81      didn_t_mean_to_7       7  --       Asked_for_it_4       4 0.000  NA
    82      didn_t_mean_to_8       8  --       Asked_for_it_4       4 0.204  NA
    83      didn_t_mean_to_9       9  --       Asked_for_it_4       4 0.000  NA
    84     didn_t_mean_to_10      10  --       Asked_for_it_4       4 0.000  NA
    85     didn_t_mean_to_11      11  --       Asked_for_it_4       4 0.000  NA
    86  wasnt_really_rape_12      12  --       Asked_for_it_4       4 0.000  NA
    87  wasnt_really_rape_13      13  --       Asked_for_it_4       4 0.000  NA
    88  wasnt_really_rape_14      14  --       Asked_for_it_4       4 0.000  NA
    89  wasnt_really_rape_15      15  --       Asked_for_it_4       4 0.000  NA
    90  Wasnt_really_rape_16      16  --       Asked_for_it_4       4 0.000  NA
    91           She_lied_17      17  --       Asked_for_it_4       4 0.000  NA
    92           She_lied_18      18  --       Asked_for_it_4       4 0.000  NA
    93           She_lied_19      19  --       Asked_for_it_4       4 0.205  NA
    94           She_lied_20      20  --       Asked_for_it_4       4 0.000  NA
    95           She_lied_21      21  --       Asked_for_it_4       4 0.000  NA
    96        Asked_for_it_6       6  --       Asked_for_it_5       5 0.000  NA
    97      didn_t_mean_to_7       7  --       Asked_for_it_5       5 0.184  NA
    98      didn_t_mean_to_8       8  --       Asked_for_it_5       5 0.000  NA
    99      didn_t_mean_to_9       9  --       Asked_for_it_5       5 0.000  NA
    100    didn_t_mean_to_10      10  --       Asked_for_it_5       5 0.000  NA
    101    didn_t_mean_to_11      11  --       Asked_for_it_5       5 0.000  NA
    102 wasnt_really_rape_12      12  --       Asked_for_it_5       5 0.000  NA
    103 wasnt_really_rape_13      13  --       Asked_for_it_5       5 0.000  NA
    104 wasnt_really_rape_14      14  --       Asked_for_it_5       5 0.187  NA
    105 wasnt_really_rape_15      15  --       Asked_for_it_5       5 0.000  NA
    106 Wasnt_really_rape_16      16  --       Asked_for_it_5       5 0.000  NA
    107          She_lied_17      17  --       Asked_for_it_5       5 0.000  NA
    108          She_lied_18      18  --       Asked_for_it_5       5 0.000  NA
    109          She_lied_19      19  --       Asked_for_it_5       5 0.000  NA
    110          She_lied_20      20  --       Asked_for_it_5       5 0.000  NA
    111          She_lied_21      21  --       Asked_for_it_5       5 0.109  NA
    112     didn_t_mean_to_7       7  --       Asked_for_it_6       6 0.000  NA
    113     didn_t_mean_to_8       8  --       Asked_for_it_6       6 0.000  NA
    114     didn_t_mean_to_9       9  --       Asked_for_it_6       6 0.000  NA
    115    didn_t_mean_to_10      10  --       Asked_for_it_6       6 0.000  NA
    116    didn_t_mean_to_11      11  --       Asked_for_it_6       6 0.000  NA
    117 wasnt_really_rape_12      12  --       Asked_for_it_6       6 0.000  NA
    118 wasnt_really_rape_13      13  --       Asked_for_it_6       6 0.000  NA
    119 wasnt_really_rape_14      14  --       Asked_for_it_6       6 0.000  NA
    120 wasnt_really_rape_15      15  --       Asked_for_it_6       6 0.000  NA
    121 Wasnt_really_rape_16      16  --       Asked_for_it_6       6 0.000  NA
    122          She_lied_17      17  --       Asked_for_it_6       6 0.127  NA
    123          She_lied_18      18  --       Asked_for_it_6       6 0.000  NA
    124          She_lied_19      19  --       Asked_for_it_6       6 0.000  NA
    125          She_lied_20      20  --       Asked_for_it_6       6 0.350  NA
    126          She_lied_21      21  --       Asked_for_it_6       6 0.000  NA
    127     didn_t_mean_to_8       8  --     didn_t_mean_to_7       7 0.000  NA
    128     didn_t_mean_to_9       9  --     didn_t_mean_to_7       7 0.521  NA
    129    didn_t_mean_to_10      10  --     didn_t_mean_to_7       7 0.202  NA
    130    didn_t_mean_to_11      11  --     didn_t_mean_to_7       7 0.000  NA
    131 wasnt_really_rape_12      12  --     didn_t_mean_to_7       7 0.000  NA
    132 wasnt_really_rape_13      13  --     didn_t_mean_to_7       7 0.000  NA
    133 wasnt_really_rape_14      14  --     didn_t_mean_to_7       7 0.000  NA
    134 wasnt_really_rape_15      15  --     didn_t_mean_to_7       7 0.000  NA
    135 Wasnt_really_rape_16      16  --     didn_t_mean_to_7       7 0.000  NA
    136          She_lied_17      17  --     didn_t_mean_to_7       7 0.000  NA
    137          She_lied_18      18  --     didn_t_mean_to_7       7 0.000  NA
    138          She_lied_19      19  --     didn_t_mean_to_7       7 0.000  NA
    139          She_lied_20      20  --     didn_t_mean_to_7       7 0.000  NA
    140          She_lied_21      21  --     didn_t_mean_to_7       7 0.000  NA
    141     didn_t_mean_to_9       9  --     didn_t_mean_to_8       8 0.364  NA
    142    didn_t_mean_to_10      10  --     didn_t_mean_to_8       8 0.233  NA
    143    didn_t_mean_to_11      11  --     didn_t_mean_to_8       8 0.148  NA
    144 wasnt_really_rape_12      12  --     didn_t_mean_to_8       8 0.000  NA
    145 wasnt_really_rape_13      13  --     didn_t_mean_to_8       8 0.000  NA
    146 wasnt_really_rape_14      14  --     didn_t_mean_to_8       8 0.000  NA
    147 wasnt_really_rape_15      15  --     didn_t_mean_to_8       8 0.000  NA
    148 Wasnt_really_rape_16      16  --     didn_t_mean_to_8       8 0.000  NA
    149          She_lied_17      17  --     didn_t_mean_to_8       8 0.000  NA
    150          She_lied_18      18  --     didn_t_mean_to_8       8 0.000  NA
    151          She_lied_19      19  --     didn_t_mean_to_8       8 0.000  NA
    152          She_lied_20      20  --     didn_t_mean_to_8       8 0.000  NA
    153          She_lied_21      21  --     didn_t_mean_to_8       8 0.000  NA
    154    didn_t_mean_to_10      10  --     didn_t_mean_to_9       9 0.000  NA
    155    didn_t_mean_to_11      11  --     didn_t_mean_to_9       9 0.000  NA
    156 wasnt_really_rape_12      12  --     didn_t_mean_to_9       9 0.000  NA
    157 wasnt_really_rape_13      13  --     didn_t_mean_to_9       9 0.000  NA
    158 wasnt_really_rape_14      14  --     didn_t_mean_to_9       9 0.000  NA
    159 wasnt_really_rape_15      15  --     didn_t_mean_to_9       9 0.000  NA
    160 Wasnt_really_rape_16      16  --     didn_t_mean_to_9       9 0.000  NA
    161          She_lied_17      17  --     didn_t_mean_to_9       9 0.000  NA
    162          She_lied_18      18  --     didn_t_mean_to_9       9 0.000  NA
    163          She_lied_19      19  --     didn_t_mean_to_9       9 0.000  NA
    164          She_lied_20      20  --     didn_t_mean_to_9       9 0.000  NA
    165          She_lied_21      21  --     didn_t_mean_to_9       9 0.000  NA
    166    didn_t_mean_to_11      11  --    didn_t_mean_to_10      10 0.000  NA
    167 wasnt_really_rape_12      12  --    didn_t_mean_to_10      10 0.000  NA
    168 wasnt_really_rape_13      13  --    didn_t_mean_to_10      10 0.000  NA
    169 wasnt_really_rape_14      14  --    didn_t_mean_to_10      10 0.000  NA
    170 wasnt_really_rape_15      15  --    didn_t_mean_to_10      10 0.000  NA
    171 Wasnt_really_rape_16      16  --    didn_t_mean_to_10      10 0.000  NA
    172          She_lied_17      17  --    didn_t_mean_to_10      10 0.000  NA
    173          She_lied_18      18  --    didn_t_mean_to_10      10 0.000  NA
    174          She_lied_19      19  --    didn_t_mean_to_10      10 0.000  NA
    175          She_lied_20      20  --    didn_t_mean_to_10      10 0.000  NA
    176          She_lied_21      21  --    didn_t_mean_to_10      10 0.000  NA
    177 wasnt_really_rape_12      12  --    didn_t_mean_to_11      11 0.479  NA
    178 wasnt_really_rape_13      13  --    didn_t_mean_to_11      11 0.000  NA
    179 wasnt_really_rape_14      14  --    didn_t_mean_to_11      11 0.000  NA
    180 wasnt_really_rape_15      15  --    didn_t_mean_to_11      11 0.134  NA
    181 Wasnt_really_rape_16      16  --    didn_t_mean_to_11      11 0.000  NA
    182          She_lied_17      17  --    didn_t_mean_to_11      11 0.000  NA
    183          She_lied_18      18  --    didn_t_mean_to_11      11 0.000  NA
    184          She_lied_19      19  --    didn_t_mean_to_11      11 0.000  NA
    185          She_lied_20      20  --    didn_t_mean_to_11      11 0.000  NA
    186          She_lied_21      21  --    didn_t_mean_to_11      11 0.000  NA
    187 wasnt_really_rape_13      13  -- wasnt_really_rape_12      12 0.000  NA
    188 wasnt_really_rape_14      14  -- wasnt_really_rape_12      12 0.000  NA
    189 wasnt_really_rape_15      15  -- wasnt_really_rape_12      12 0.000  NA
    190 Wasnt_really_rape_16      16  -- wasnt_really_rape_12      12 0.000  NA
    191          She_lied_17      17  -- wasnt_really_rape_12      12 0.034  NA
    192          She_lied_18      18  -- wasnt_really_rape_12      12 0.247  NA
    193          She_lied_19      19  -- wasnt_really_rape_12      12 0.000  NA
    194          She_lied_20      20  -- wasnt_really_rape_12      12 0.000  NA
    195          She_lied_21      21  -- wasnt_really_rape_12      12 0.000  NA
    196 wasnt_really_rape_14      14  -- wasnt_really_rape_13      13 0.635  NA
    197 wasnt_really_rape_15      15  -- wasnt_really_rape_13      13 0.004  NA
    198 Wasnt_really_rape_16      16  -- wasnt_really_rape_13      13 0.000  NA
    199          She_lied_17      17  -- wasnt_really_rape_13      13 0.000  NA
    200          She_lied_18      18  -- wasnt_really_rape_13      13 0.000  NA
    201          She_lied_19      19  -- wasnt_really_rape_13      13 0.000  NA
    202          She_lied_20      20  -- wasnt_really_rape_13      13 0.000  NA
    203          She_lied_21      21  -- wasnt_really_rape_13      13 0.000  NA
    204 wasnt_really_rape_15      15  -- wasnt_really_rape_14      14 0.214  NA
    205 Wasnt_really_rape_16      16  -- wasnt_really_rape_14      14 0.000  NA
    206          She_lied_17      17  -- wasnt_really_rape_14      14 0.146  NA
    207          She_lied_18      18  -- wasnt_really_rape_14      14 0.000  NA
    208          She_lied_19      19  -- wasnt_really_rape_14      14 0.000  NA
    209          She_lied_20      20  -- wasnt_really_rape_14      14 0.000  NA
    210          She_lied_21      21  -- wasnt_really_rape_14      14 0.000  NA
    211 Wasnt_really_rape_16      16  -- wasnt_really_rape_15      15 0.335  NA
    212          She_lied_17      17  -- wasnt_really_rape_15      15 0.000  NA
    213          She_lied_18      18  -- wasnt_really_rape_15      15 0.000  NA
    214          She_lied_19      19  -- wasnt_really_rape_15      15 0.000  NA
    215          She_lied_20      20  -- wasnt_really_rape_15      15 0.000  NA
    216          She_lied_21      21  -- wasnt_really_rape_15      15 0.000  NA
    217          She_lied_17      17  -- Wasnt_really_rape_16      16 0.000  NA
    218          She_lied_18      18  -- Wasnt_really_rape_16      16 0.000  NA
    219          She_lied_19      19  -- Wasnt_really_rape_16      16 0.000  NA
    220          She_lied_20      20  -- Wasnt_really_rape_16      16 0.000  NA
    221          She_lied_21      21  -- Wasnt_really_rape_16      16 0.000  NA
    222          She_lied_18      18  --          She_lied_17      17 0.275  NA
    223          She_lied_19      19  --          She_lied_17      17 0.000  NA
    224          She_lied_20      20  --          She_lied_17      17 0.000  NA
    225          She_lied_21      21  --          She_lied_17      17 0.000  NA
    226          She_lied_19      19  --          She_lied_18      18 0.384  NA
    227          She_lied_20      20  --          She_lied_18      18 0.000  NA
    228          She_lied_21      21  --          She_lied_18      18 0.216  NA
    229          She_lied_20      20  --          She_lied_19      19 0.175  NA
    230          She_lied_21      21  --          She_lied_19      19 0.425  NA
    231          She_lied_21      21  --          She_lied_20      20 0.115  NA
    232       Asked_for_it_1       1 ~/~       Asked_for_it_1       1 0.781  NA
    233       Asked_for_it_2       2 ~/~       Asked_for_it_2       2 0.697  NA
    234       Asked_for_it_3       3 ~/~       Asked_for_it_3       3 0.651  NA
    235       Asked_for_it_4       4 ~/~       Asked_for_it_4       4 0.889  NA
    236       Asked_for_it_5       5 ~/~       Asked_for_it_5       5 0.672  NA
    237       Asked_for_it_6       6 ~/~       Asked_for_it_6       6 0.989  NA
    238     didn_t_mean_to_7       7 ~/~     didn_t_mean_to_7       7 0.962  NA
    239     didn_t_mean_to_8       8 ~/~     didn_t_mean_to_8       8 0.921  NA
    240     didn_t_mean_to_9       9 ~/~     didn_t_mean_to_9       9 0.851  NA
    241    didn_t_mean_to_10      10 ~/~    didn_t_mean_to_10      10 1.165  NA
    242    didn_t_mean_to_11      11 ~/~    didn_t_mean_to_11      11 0.702  NA
    243 wasnt_really_rape_12      12 ~/~ wasnt_really_rape_12      12 0.928  NA
    244 wasnt_really_rape_13      13 ~/~ wasnt_really_rape_13      13 0.584  NA
    245 wasnt_really_rape_14      14 ~/~ wasnt_really_rape_14      14 0.329  NA
    246 wasnt_really_rape_15      15 ~/~ wasnt_really_rape_15      15 0.417  NA
    247 Wasnt_really_rape_16      16 ~/~ Wasnt_really_rape_16      16 0.246  NA
    248          She_lied_17      17 ~/~          She_lied_17      17 1.043  NA
    249          She_lied_18      18 ~/~          She_lied_18      18 0.673  NA
    250          She_lied_19      19 ~/~          She_lied_19      19 0.681  NA
    251          She_lied_20      20 ~/~          She_lied_20      20 0.991  NA
    252          She_lied_21      21 ~/~          She_lied_21      21 0.766  NA
           se     p se_boot p_boot matrix row col par      group group_id fixed
    1   0.089 0.000      NA     NA     mu   1   1   1 fullsample        1 FALSE
    2   0.096 0.000      NA     NA     mu   2   1   2 fullsample        1 FALSE
    3   0.068 0.000      NA     NA     mu   3   1   3 fullsample        1 FALSE
    4   0.114 0.000      NA     NA     mu   4   1   4 fullsample        1 FALSE
    5   0.067 0.000      NA     NA     mu   5   1   5 fullsample        1 FALSE
    6   0.114 0.000      NA     NA     mu   6   1   6 fullsample        1 FALSE
    7   0.103 0.000      NA     NA     mu   7   1   7 fullsample        1 FALSE
    8   0.096 0.000      NA     NA     mu   8   1   8 fullsample        1 FALSE
    9   0.095 0.000      NA     NA     mu   9   1   9 fullsample        1 FALSE
    10  0.102 0.000      NA     NA     mu  10   1  10 fullsample        1 FALSE
    11  0.070 0.000      NA     NA     mu  11   1  11 fullsample        1 FALSE
    12  0.099 0.000      NA     NA     mu  12   1  12 fullsample        1 FALSE
    13  0.073 0.000      NA     NA     mu  13   1  13 fullsample        1 FALSE
    14  0.050 0.000      NA     NA     mu  14   1  14 fullsample        1 FALSE
    15  0.040 0.000      NA     NA     mu  15   1  15 fullsample        1 FALSE
    16  0.023 0.000      NA     NA     mu  16   1  16 fullsample        1 FALSE
    17  0.107 0.000      NA     NA     mu  17   1  17 fullsample        1 FALSE
    18  0.101 0.000      NA     NA     mu  18   1  18 fullsample        1 FALSE
    19  0.106 0.000      NA     NA     mu  19   1  19 fullsample        1 FALSE
    20  0.105 0.000      NA     NA     mu  20   1  20 fullsample        1 FALSE
    21  0.101 0.000      NA     NA     mu  21   1  21 fullsample        1 FALSE
    22  0.057 0.006      NA     NA  omega   2   1  22 fullsample        1 FALSE
    23  0.064 0.000      NA     NA  omega   3   1  23 fullsample        1 FALSE
    24     NA    NA      NA     NA  omega   4   1   0 fullsample        1  TRUE
    25  0.059 0.000      NA     NA  omega   5   1  24 fullsample        1 FALSE
    26  0.054 0.000      NA     NA  omega   6   1  25 fullsample        1 FALSE
    27     NA    NA      NA     NA  omega   7   1   0 fullsample        1  TRUE
    28     NA    NA      NA     NA  omega   8   1   0 fullsample        1  TRUE
    29     NA    NA      NA     NA  omega   9   1   0 fullsample        1  TRUE
    30     NA    NA      NA     NA  omega  10   1   0 fullsample        1  TRUE
    31     NA    NA      NA     NA  omega  11   1   0 fullsample        1  TRUE
    32     NA    NA      NA     NA  omega  12   1   0 fullsample        1  TRUE
    33     NA    NA      NA     NA  omega  13   1   0 fullsample        1  TRUE
    34     NA    NA      NA     NA  omega  14   1   0 fullsample        1  TRUE
    35     NA    NA      NA     NA  omega  15   1   0 fullsample        1  TRUE
    36  0.054 0.000      NA     NA  omega  16   1  26 fullsample        1 FALSE
    37     NA    NA      NA     NA  omega  17   1   0 fullsample        1  TRUE
    38     NA    NA      NA     NA  omega  18   1   0 fullsample        1  TRUE
    39     NA    NA      NA     NA  omega  19   1   0 fullsample        1  TRUE
    40     NA    NA      NA     NA  omega  20   1   0 fullsample        1  TRUE
    41     NA    NA      NA     NA  omega  21   1   0 fullsample        1  TRUE
    42  0.054 0.000      NA     NA  omega   3   2  27 fullsample        1 FALSE
    43  0.051 0.000      NA     NA  omega   4   2  28 fullsample        1 FALSE
    44     NA    NA      NA     NA  omega   5   2   0 fullsample        1  TRUE
    45     NA    NA      NA     NA  omega   6   2   0 fullsample        1  TRUE
    46     NA    NA      NA     NA  omega   7   2   0 fullsample        1  TRUE
    47     NA    NA      NA     NA  omega   8   2   0 fullsample        1  TRUE
    48     NA    NA      NA     NA  omega   9   2   0 fullsample        1  TRUE
    49     NA    NA      NA     NA  omega  10   2   0 fullsample        1  TRUE
    50     NA    NA      NA     NA  omega  11   2   0 fullsample        1  TRUE
    51     NA    NA      NA     NA  omega  12   2   0 fullsample        1  TRUE
    52     NA    NA      NA     NA  omega  13   2   0 fullsample        1  TRUE
    53  0.042 0.000      NA     NA  omega  14   2  29 fullsample        1 FALSE
    54     NA    NA      NA     NA  omega  15   2   0 fullsample        1  TRUE
    55     NA    NA      NA     NA  omega  16   2   0 fullsample        1  TRUE
    56     NA    NA      NA     NA  omega  17   2   0 fullsample        1  TRUE
    57  0.042 0.002      NA     NA  omega  18   2  30 fullsample        1 FALSE
    58     NA    NA      NA     NA  omega  19   2   0 fullsample        1  TRUE
    59     NA    NA      NA     NA  omega  20   2   0 fullsample        1  TRUE
    60     NA    NA      NA     NA  omega  21   2   0 fullsample        1  TRUE
    61     NA    NA      NA     NA  omega   4   3   0 fullsample        1  TRUE
    62     NA    NA      NA     NA  omega   5   3   0 fullsample        1  TRUE
    63     NA    NA      NA     NA  omega   6   3   0 fullsample        1  TRUE
    64     NA    NA      NA     NA  omega   7   3   0 fullsample        1  TRUE
    65     NA    NA      NA     NA  omega   8   3   0 fullsample        1  TRUE
    66     NA    NA      NA     NA  omega   9   3   0 fullsample        1  TRUE
    67     NA    NA      NA     NA  omega  10   3   0 fullsample        1  TRUE
    68     NA    NA      NA     NA  omega  11   3   0 fullsample        1  TRUE
    69     NA    NA      NA     NA  omega  12   3   0 fullsample        1  TRUE
    70     NA    NA      NA     NA  omega  13   3   0 fullsample        1  TRUE
    71     NA    NA      NA     NA  omega  14   3   0 fullsample        1  TRUE
    72     NA    NA      NA     NA  omega  15   3   0 fullsample        1  TRUE
    73     NA    NA      NA     NA  omega  16   3   0 fullsample        1  TRUE
    74     NA    NA      NA     NA  omega  17   3   0 fullsample        1  TRUE
    75     NA    NA      NA     NA  omega  18   3   0 fullsample        1  TRUE
    76     NA    NA      NA     NA  omega  19   3   0 fullsample        1  TRUE
    77     NA    NA      NA     NA  omega  20   3   0 fullsample        1  TRUE
    78     NA    NA      NA     NA  omega  21   3   0 fullsample        1  TRUE
    79     NA    NA      NA     NA  omega   5   4   0 fullsample        1  TRUE
    80  0.055 0.000      NA     NA  omega   6   4  31 fullsample        1 FALSE
    81     NA    NA      NA     NA  omega   7   4   0 fullsample        1  TRUE
    82  0.045 0.000      NA     NA  omega   8   4  32 fullsample        1 FALSE
    83     NA    NA      NA     NA  omega   9   4   0 fullsample        1  TRUE
    84     NA    NA      NA     NA  omega  10   4   0 fullsample        1  TRUE
    85     NA    NA      NA     NA  omega  11   4   0 fullsample        1  TRUE
    86     NA    NA      NA     NA  omega  12   4   0 fullsample        1  TRUE
    87     NA    NA      NA     NA  omega  13   4   0 fullsample        1  TRUE
    88     NA    NA      NA     NA  omega  14   4   0 fullsample        1  TRUE
    89     NA    NA      NA     NA  omega  15   4   0 fullsample        1  TRUE
    90     NA    NA      NA     NA  omega  16   4   0 fullsample        1  TRUE
    91     NA    NA      NA     NA  omega  17   4   0 fullsample        1  TRUE
    92     NA    NA      NA     NA  omega  18   4   0 fullsample        1  TRUE
    93  0.046 0.000      NA     NA  omega  19   4  33 fullsample        1 FALSE
    94     NA    NA      NA     NA  omega  20   4   0 fullsample        1  TRUE
    95     NA    NA      NA     NA  omega  21   4   0 fullsample        1  TRUE
    96     NA    NA      NA     NA  omega   6   5   0 fullsample        1  TRUE
    97  0.051 0.000      NA     NA  omega   7   5  34 fullsample        1 FALSE
    98     NA    NA      NA     NA  omega   8   5   0 fullsample        1  TRUE
    99     NA    NA      NA     NA  omega   9   5   0 fullsample        1  TRUE
    100    NA    NA      NA     NA  omega  10   5   0 fullsample        1  TRUE
    101    NA    NA      NA     NA  omega  11   5   0 fullsample        1  TRUE
    102    NA    NA      NA     NA  omega  12   5   0 fullsample        1  TRUE
    103    NA    NA      NA     NA  omega  13   5   0 fullsample        1  TRUE
    104 0.046 0.000      NA     NA  omega  14   5  35 fullsample        1 FALSE
    105    NA    NA      NA     NA  omega  15   5   0 fullsample        1  TRUE
    106    NA    NA      NA     NA  omega  16   5   0 fullsample        1  TRUE
    107    NA    NA      NA     NA  omega  17   5   0 fullsample        1  TRUE
    108    NA    NA      NA     NA  omega  18   5   0 fullsample        1  TRUE
    109    NA    NA      NA     NA  omega  19   5   0 fullsample        1  TRUE
    110    NA    NA      NA     NA  omega  20   5   0 fullsample        1  TRUE
    111 0.048 0.024      NA     NA  omega  21   5  36 fullsample        1 FALSE
    112    NA    NA      NA     NA  omega   7   6   0 fullsample        1  TRUE
    113    NA    NA      NA     NA  omega   8   6   0 fullsample        1  TRUE
    114    NA    NA      NA     NA  omega   9   6   0 fullsample        1  TRUE
    115    NA    NA      NA     NA  omega  10   6   0 fullsample        1  TRUE
    116    NA    NA      NA     NA  omega  11   6   0 fullsample        1  TRUE
    117    NA    NA      NA     NA  omega  12   6   0 fullsample        1  TRUE
    118    NA    NA      NA     NA  omega  13   6   0 fullsample        1  TRUE
    119    NA    NA      NA     NA  omega  14   6   0 fullsample        1  TRUE
    120    NA    NA      NA     NA  omega  15   6   0 fullsample        1  TRUE
    121    NA    NA      NA     NA  omega  16   6   0 fullsample        1  TRUE
    122 0.057 0.027      NA     NA  omega  17   6  37 fullsample        1 FALSE
    123    NA    NA      NA     NA  omega  18   6   0 fullsample        1  TRUE
    124    NA    NA      NA     NA  omega  19   6   0 fullsample        1  TRUE
    125 0.059 0.000      NA     NA  omega  20   6  38 fullsample        1 FALSE
    126    NA    NA      NA     NA  omega  21   6   0 fullsample        1  TRUE
    127    NA    NA      NA     NA  omega   8   7   0 fullsample        1  TRUE
    128 0.051 0.000      NA     NA  omega   9   7  39 fullsample        1 FALSE
    129 0.061 0.001      NA     NA  omega  10   7  40 fullsample        1 FALSE
    130    NA    NA      NA     NA  omega  11   7   0 fullsample        1  TRUE
    131    NA    NA      NA     NA  omega  12   7   0 fullsample        1  TRUE
    132    NA    NA      NA     NA  omega  13   7   0 fullsample        1  TRUE
    133    NA    NA      NA     NA  omega  14   7   0 fullsample        1  TRUE
    134    NA    NA      NA     NA  omega  15   7   0 fullsample        1  TRUE
    135    NA    NA      NA     NA  omega  16   7   0 fullsample        1  TRUE
    136    NA    NA      NA     NA  omega  17   7   0 fullsample        1  TRUE
    137    NA    NA      NA     NA  omega  18   7   0 fullsample        1  TRUE
    138    NA    NA      NA     NA  omega  19   7   0 fullsample        1  TRUE
    139    NA    NA      NA     NA  omega  20   7   0 fullsample        1  TRUE
    140    NA    NA      NA     NA  omega  21   7   0 fullsample        1  TRUE
    141 0.053 0.000      NA     NA  omega   9   8  41 fullsample        1 FALSE
    142 0.063 0.000      NA     NA  omega  10   8  42 fullsample        1 FALSE
    143 0.052 0.005      NA     NA  omega  11   8  43 fullsample        1 FALSE
    144    NA    NA      NA     NA  omega  12   8   0 fullsample        1  TRUE
    145    NA    NA      NA     NA  omega  13   8   0 fullsample        1  TRUE
    146    NA    NA      NA     NA  omega  14   8   0 fullsample        1  TRUE
    147    NA    NA      NA     NA  omega  15   8   0 fullsample        1  TRUE
    148    NA    NA      NA     NA  omega  16   8   0 fullsample        1  TRUE
    149    NA    NA      NA     NA  omega  17   8   0 fullsample        1  TRUE
    150    NA    NA      NA     NA  omega  18   8   0 fullsample        1  TRUE
    151    NA    NA      NA     NA  omega  19   8   0 fullsample        1  TRUE
    152    NA    NA      NA     NA  omega  20   8   0 fullsample        1  TRUE
    153    NA    NA      NA     NA  omega  21   8   0 fullsample        1  TRUE
    154    NA    NA      NA     NA  omega  10   9   0 fullsample        1  TRUE
    155    NA    NA      NA     NA  omega  11   9   0 fullsample        1  TRUE
    156    NA    NA      NA     NA  omega  12   9   0 fullsample        1  TRUE
    157    NA    NA      NA     NA  omega  13   9   0 fullsample        1  TRUE
    158    NA    NA      NA     NA  omega  14   9   0 fullsample        1  TRUE
    159    NA    NA      NA     NA  omega  15   9   0 fullsample        1  TRUE
    160    NA    NA      NA     NA  omega  16   9   0 fullsample        1  TRUE
    161    NA    NA      NA     NA  omega  17   9   0 fullsample        1  TRUE
    162    NA    NA      NA     NA  omega  18   9   0 fullsample        1  TRUE
    163    NA    NA      NA     NA  omega  19   9   0 fullsample        1  TRUE
    164    NA    NA      NA     NA  omega  20   9   0 fullsample        1  TRUE
    165    NA    NA      NA     NA  omega  21   9   0 fullsample        1  TRUE
    166    NA    NA      NA     NA  omega  11  10   0 fullsample        1  TRUE
    167    NA    NA      NA     NA  omega  12  10   0 fullsample        1  TRUE
    168    NA    NA      NA     NA  omega  13  10   0 fullsample        1  TRUE
    169    NA    NA      NA     NA  omega  14  10   0 fullsample        1  TRUE
    170    NA    NA      NA     NA  omega  15  10   0 fullsample        1  TRUE
    171    NA    NA      NA     NA  omega  16  10   0 fullsample        1  TRUE
    172    NA    NA      NA     NA  omega  17  10   0 fullsample        1  TRUE
    173    NA    NA      NA     NA  omega  18  10   0 fullsample        1  TRUE
    174    NA    NA      NA     NA  omega  19  10   0 fullsample        1  TRUE
    175    NA    NA      NA     NA  omega  20  10   0 fullsample        1  TRUE
    176    NA    NA      NA     NA  omega  21  10   0 fullsample        1  TRUE
    177 0.054 0.000      NA     NA  omega  12  11  44 fullsample        1 FALSE
    178    NA    NA      NA     NA  omega  13  11   0 fullsample        1  TRUE
    179    NA    NA      NA     NA  omega  14  11   0 fullsample        1  TRUE
    180 0.056 0.016      NA     NA  omega  15  11  45 fullsample        1 FALSE
    181    NA    NA      NA     NA  omega  16  11   0 fullsample        1  TRUE
    182    NA    NA      NA     NA  omega  17  11   0 fullsample        1  TRUE
    183    NA    NA      NA     NA  omega  18  11   0 fullsample        1  TRUE
    184    NA    NA      NA     NA  omega  19  11   0 fullsample        1  TRUE
    185    NA    NA      NA     NA  omega  20  11   0 fullsample        1  TRUE
    186    NA    NA      NA     NA  omega  21  11   0 fullsample        1  TRUE
    187    NA    NA      NA     NA  omega  13  12   0 fullsample        1  TRUE
    188    NA    NA      NA     NA  omega  14  12   0 fullsample        1  TRUE
    189    NA    NA      NA     NA  omega  15  12   0 fullsample        1  TRUE
    190    NA    NA      NA     NA  omega  16  12   0 fullsample        1  TRUE
    191 0.065 0.606      NA     NA  omega  17  12  46 fullsample        1 FALSE
    192 0.047 0.000      NA     NA  omega  18  12  47 fullsample        1 FALSE
    193    NA    NA      NA     NA  omega  19  12   0 fullsample        1  TRUE
    194    NA    NA      NA     NA  omega  20  12   0 fullsample        1  TRUE
    195    NA    NA      NA     NA  omega  21  12   0 fullsample        1  TRUE
    196 0.040 0.000      NA     NA  omega  14  13  48 fullsample        1 FALSE
    197 0.072 0.951      NA     NA  omega  15  13  49 fullsample        1 FALSE
    198    NA    NA      NA     NA  omega  16  13   0 fullsample        1  TRUE
    199    NA    NA      NA     NA  omega  17  13   0 fullsample        1  TRUE
    200    NA    NA      NA     NA  omega  18  13   0 fullsample        1  TRUE
    201    NA    NA      NA     NA  omega  19  13   0 fullsample        1  TRUE
    202    NA    NA      NA     NA  omega  20  13   0 fullsample        1  TRUE
    203    NA    NA      NA     NA  omega  21  13   0 fullsample        1  TRUE
    204 0.061 0.000      NA     NA  omega  15  14  50 fullsample        1 FALSE
    205    NA    NA      NA     NA  omega  16  14   0 fullsample        1  TRUE
    206 0.045 0.001      NA     NA  omega  17  14  51 fullsample        1 FALSE
    207    NA    NA      NA     NA  omega  18  14   0 fullsample        1  TRUE
    208    NA    NA      NA     NA  omega  19  14   0 fullsample        1  TRUE
    209    NA    NA      NA     NA  omega  20  14   0 fullsample        1  TRUE
    210    NA    NA      NA     NA  omega  21  14   0 fullsample        1  TRUE
    211 0.063 0.000      NA     NA  omega  16  15  52 fullsample        1 FALSE
    212    NA    NA      NA     NA  omega  17  15   0 fullsample        1  TRUE
    213    NA    NA      NA     NA  omega  18  15   0 fullsample        1  TRUE
    214    NA    NA      NA     NA  omega  19  15   0 fullsample        1  TRUE
    215    NA    NA      NA     NA  omega  20  15   0 fullsample        1  TRUE
    216    NA    NA      NA     NA  omega  21  15   0 fullsample        1  TRUE
    217    NA    NA      NA     NA  omega  17  16   0 fullsample        1  TRUE
    218    NA    NA      NA     NA  omega  18  16   0 fullsample        1  TRUE
    219    NA    NA      NA     NA  omega  19  16   0 fullsample        1  TRUE
    220    NA    NA      NA     NA  omega  20  16   0 fullsample        1  TRUE
    221    NA    NA      NA     NA  omega  21  16   0 fullsample        1  TRUE
    222 0.054 0.000      NA     NA  omega  18  17  53 fullsample        1 FALSE
    223    NA    NA      NA     NA  omega  19  17   0 fullsample        1  TRUE
    224    NA    NA      NA     NA  omega  20  17   0 fullsample        1  TRUE
    225    NA    NA      NA     NA  omega  21  17   0 fullsample        1  TRUE
    226 0.056 0.000      NA     NA  omega  19  18  54 fullsample        1 FALSE
    227    NA    NA      NA     NA  omega  20  18   0 fullsample        1  TRUE
    228 0.065 0.001      NA     NA  omega  21  18  55 fullsample        1 FALSE
    229 0.061 0.004      NA     NA  omega  20  19  56 fullsample        1 FALSE
    230 0.060 0.000      NA     NA  omega  21  19  57 fullsample        1 FALSE
    231 0.068 0.094      NA     NA  omega  21  20  58 fullsample        1 FALSE
    232 0.041 0.000      NA     NA  delta   1   1  59 fullsample        1 FALSE
    233 0.034 0.000      NA     NA  delta   2   2  60 fullsample        1 FALSE
    234 0.036 0.000      NA     NA  delta   3   3  61 fullsample        1 FALSE
    235 0.045 0.000      NA     NA  delta   4   4  62 fullsample        1 FALSE
    236 0.036 0.000      NA     NA  delta   5   5  63 fullsample        1 FALSE
    237 0.052 0.000      NA     NA  delta   6   6  64 fullsample        1 FALSE
    238 0.052 0.000      NA     NA  delta   7   7  65 fullsample        1 FALSE
    239 0.049 0.000      NA     NA  delta   8   8  66 fullsample        1 FALSE
    240 0.045 0.000      NA     NA  delta   9   9  67 fullsample        1 FALSE
    241 0.065 0.000      NA     NA  delta  10  10  68 fullsample        1 FALSE
    242 0.038 0.000      NA     NA  delta  11  11  69 fullsample        1 FALSE
    243 0.049 0.000      NA     NA  delta  12  12  70 fullsample        1 FALSE
    244 0.032 0.000      NA     NA  delta  13  13  71 fullsample        1 FALSE
    245 0.016 0.000      NA     NA  delta  14  14  72 fullsample        1 FALSE
    246 0.023 0.000      NA     NA  delta  15  15  73 fullsample        1 FALSE
    247 0.014 0.000      NA     NA  delta  16  16  74 fullsample        1 FALSE
    248 0.057 0.000      NA     NA  delta  17  17  75 fullsample        1 FALSE
    249 0.034 0.000      NA     NA  delta  18  18  76 fullsample        1 FALSE
    250 0.036 0.000      NA     NA  delta  19  19  77 fullsample        1 FALSE
    251 0.054 0.000      NA     NA  delta  20  20  78 fullsample        1 FALSE
    252 0.042 0.000      NA     NA  delta  21  21  79 fullsample        1 FALSE
            mi   pmi    epc mi_free pmi_free epc_free mi_equal pmi_equal epc_equal
    1    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    2    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    3    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    4    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    5    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    6    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    7    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    8    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    9    0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    10   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    11   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    12   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    13   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    14   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    15   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    16   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    17   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    18   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    19   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    20   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    21   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    22   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    23   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    24   0.941 0.332  0.060      NA       NA       NA       NA        NA        NA
    25   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    26   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    27   1.756 0.185  0.064      NA       NA       NA       NA        NA        NA
    28   0.941 0.332  0.049      NA       NA       NA       NA        NA        NA
    29   9.914 0.002  0.137      NA       NA       NA       NA        NA        NA
    30   6.015 0.014  0.128      NA       NA       NA       NA        NA        NA
    31   9.263 0.002  0.151      NA       NA       NA       NA        NA        NA
    32  19.280 0.000  0.216      NA       NA       NA       NA        NA        NA
    33   2.843 0.092  0.081      NA       NA       NA       NA        NA        NA
    34   3.037 0.081  0.086      NA       NA       NA       NA        NA        NA
    35   0.059 0.808 -0.015      NA       NA       NA       NA        NA        NA
    36   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    37   0.058 0.809  0.014      NA       NA       NA       NA        NA        NA
    38  12.158 0.000  0.161      NA       NA       NA       NA        NA        NA
    39   3.227 0.072  0.077      NA       NA       NA       NA        NA        NA
    40   2.303 0.129  0.090      NA       NA       NA       NA        NA        NA
    41   3.873 0.049  0.095      NA       NA       NA       NA        NA        NA
    42   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    43   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    44   1.005 0.316 -0.063      NA       NA       NA       NA        NA        NA
    45   0.353 0.553 -0.035      NA       NA       NA       NA        NA        NA
    46   3.628 0.057  0.076      NA       NA       NA       NA        NA        NA
    47   0.161 0.688  0.020      NA       NA       NA       NA        NA        NA
    48   7.965 0.005  0.106      NA       NA       NA       NA        NA        NA
    49   1.097 0.295  0.047      NA       NA       NA       NA        NA        NA
    50   0.007 0.934 -0.004      NA       NA       NA       NA        NA        NA
    51   0.156 0.693  0.019      NA       NA       NA       NA        NA        NA
    52   0.040 0.841  0.012      NA       NA       NA       NA        NA        NA
    53   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    54   0.470 0.493  0.038      NA       NA       NA       NA        NA        NA
    55   5.183 0.023  0.122      NA       NA       NA       NA        NA        NA
    56   0.818 0.366 -0.057      NA       NA       NA       NA        NA        NA
    57   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    58   0.123 0.726  0.018      NA       NA       NA       NA        NA        NA
    59   0.272 0.602  0.027      NA       NA       NA       NA        NA        NA
    60   0.891 0.345 -0.048      NA       NA       NA       NA        NA        NA
    61   2.177 0.140  0.092      NA       NA       NA       NA        NA        NA
    62   0.048 0.827 -0.015      NA       NA       NA       NA        NA        NA
    63   0.976 0.323  0.061      NA       NA       NA       NA        NA        NA
    64   2.510 0.113  0.077      NA       NA       NA       NA        NA        NA
    65   0.076 0.782 -0.015      NA       NA       NA       NA        NA        NA
    66   6.084 0.014  0.113      NA       NA       NA       NA        NA        NA
    67   3.973 0.046  0.112      NA       NA       NA       NA        NA        NA
    68   0.453 0.501  0.035      NA       NA       NA       NA        NA        NA
    69   2.752 0.097  0.086      NA       NA       NA       NA        NA        NA
    70   0.437 0.509  0.034      NA       NA       NA       NA        NA        NA
    71   0.044 0.834 -0.011      NA       NA       NA       NA        NA        NA
    72   0.069 0.793  0.016      NA       NA       NA       NA        NA        NA
    73   4.693 0.030  0.147      NA       NA       NA       NA        NA        NA
    74   1.354 0.245  0.070      NA       NA       NA       NA        NA        NA
    75   8.965 0.003  0.146      NA       NA       NA       NA        NA        NA
    76   3.740 0.053  0.084      NA       NA       NA       NA        NA        NA
    77   1.756 0.185  0.074      NA       NA       NA       NA        NA        NA
    78   4.044 0.044  0.096      NA       NA       NA       NA        NA        NA
    79   0.096 0.757 -0.018      NA       NA       NA       NA        NA        NA
    80   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    81   2.364 0.124  0.067      NA       NA       NA       NA        NA        NA
    82   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    83  17.029 0.000  0.187      NA       NA       NA       NA        NA        NA
    84   0.549 0.459  0.038      NA       NA       NA       NA        NA        NA
    85   0.016 0.899 -0.006      NA       NA       NA       NA        NA        NA
    86   0.139 0.709  0.019      NA       NA       NA       NA        NA        NA
    87   1.990 0.158  0.062      NA       NA       NA       NA        NA        NA
    88   0.235 0.628 -0.022      NA       NA       NA       NA        NA        NA
    89   1.473 0.225  0.061      NA       NA       NA       NA        NA        NA
    90   1.082 0.298  0.053      NA       NA       NA       NA        NA        NA
    91   1.986 0.159 -0.088      NA       NA       NA       NA        NA        NA
    92  10.303 0.001  0.190      NA       NA       NA       NA        NA        NA
    93   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    94   2.944 0.086  0.113      NA       NA       NA       NA        NA        NA
    95   1.989 0.158  0.087      NA       NA       NA       NA        NA        NA
    96   0.139 0.709  0.023      NA       NA       NA       NA        NA        NA
    97   0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    98  22.036 0.000  0.272      NA       NA       NA       NA        NA        NA
    99   3.121 0.077  0.108      NA       NA       NA       NA        NA        NA
    100 10.393 0.001  0.206      NA       NA       NA       NA        NA        NA
    101 15.779 0.000  0.222      NA       NA       NA       NA        NA        NA
    102  6.417 0.011  0.140      NA       NA       NA       NA        NA        NA
    103  1.049 0.306  0.073      NA       NA       NA       NA        NA        NA
    104  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    105  0.100 0.751  0.021      NA       NA       NA       NA        NA        NA
    106  7.045 0.008  0.178      NA       NA       NA       NA        NA        NA
    107  0.077 0.781 -0.019      NA       NA       NA       NA        NA        NA
    108  6.722 0.010  0.143      NA       NA       NA       NA        NA        NA
    109  2.531 0.112  0.091      NA       NA       NA       NA        NA        NA
    110  2.163 0.141  0.091      NA       NA       NA       NA        NA        NA
    111  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    112  1.780 0.182  0.060      NA       NA       NA       NA        NA        NA
    113  1.369 0.242  0.067      NA       NA       NA       NA        NA        NA
    114  2.436 0.119  0.068      NA       NA       NA       NA        NA        NA
    115  2.804 0.094  0.087      NA       NA       NA       NA        NA        NA
    116  2.101 0.147  0.072      NA       NA       NA       NA        NA        NA
    117  5.196 0.023  0.118      NA       NA       NA       NA        NA        NA
    118  0.100 0.752  0.014      NA       NA       NA       NA        NA        NA
    119  0.540 0.462 -0.031      NA       NA       NA       NA        NA        NA
    120  0.047 0.829  0.011      NA       NA       NA       NA        NA        NA
    121  0.168 0.682 -0.024      NA       NA       NA       NA        NA        NA
    122  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    123  5.812 0.016  0.122      NA       NA       NA       NA        NA        NA
    124  2.624 0.105  0.086      NA       NA       NA       NA        NA        NA
    125  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    126  7.037 0.008  0.145      NA       NA       NA       NA        NA        NA
    127  1.810 0.179  0.094      NA       NA       NA       NA        NA        NA
    128  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    129  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    130  0.548 0.459  0.038      NA       NA       NA       NA        NA        NA
    131  5.063 0.024  0.104      NA       NA       NA       NA        NA        NA
    132  3.107 0.078  0.073      NA       NA       NA       NA        NA        NA
    133  2.605 0.106  0.060      NA       NA       NA       NA        NA        NA
    134  0.872 0.350  0.047      NA       NA       NA       NA        NA        NA
    135  0.495 0.482  0.037      NA       NA       NA       NA        NA        NA
    136  0.282 0.596  0.026      NA       NA       NA       NA        NA        NA
    137  7.583 0.006  0.097      NA       NA       NA       NA        NA        NA
    138  1.902 0.168  0.047      NA       NA       NA       NA        NA        NA
    139  7.450 0.006  0.128      NA       NA       NA       NA        NA        NA
    140  5.836 0.016  0.098      NA       NA       NA       NA        NA        NA
    141  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    142  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    143  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    144  2.142 0.143  0.086      NA       NA       NA       NA        NA        NA
    145  5.423 0.020  0.101      NA       NA       NA       NA        NA        NA
    146  6.478 0.011  0.099      NA       NA       NA       NA        NA        NA
    147  3.023 0.082  0.096      NA       NA       NA       NA        NA        NA
    148  1.877 0.171  0.075      NA       NA       NA       NA        NA        NA
    149 11.478 0.001  0.186      NA       NA       NA       NA        NA        NA
    150 13.932 0.000  0.160      NA       NA       NA       NA        NA        NA
    151  8.672 0.003  0.128      NA       NA       NA       NA        NA        NA
    152  3.640 0.056  0.103      NA       NA       NA       NA        NA        NA
    153  8.921 0.003  0.137      NA       NA       NA       NA        NA        NA
    154 10.180 0.001  0.245      NA       NA       NA       NA        NA        NA
    155  1.487 0.223  0.067      NA       NA       NA       NA        NA        NA
    156  7.770 0.005  0.127      NA       NA       NA       NA        NA        NA
    157  7.282 0.007  0.104      NA       NA       NA       NA        NA        NA
    158  9.722 0.002  0.104      NA       NA       NA       NA        NA        NA
    159  3.074 0.080  0.085      NA       NA       NA       NA        NA        NA
    160  5.029 0.025  0.111      NA       NA       NA       NA        NA        NA
    161  4.463 0.035  0.098      NA       NA       NA       NA        NA        NA
    162 24.829 0.000  0.167      NA       NA       NA       NA        NA        NA
    163 11.153 0.001  0.109      NA       NA       NA       NA        NA        NA
    164  9.055 0.003  0.136      NA       NA       NA       NA        NA        NA
    165 14.463 0.000  0.143      NA       NA       NA       NA        NA        NA
    166  9.499 0.002  0.194      NA       NA       NA       NA        NA        NA
    167 16.742 0.000  0.228      NA       NA       NA       NA        NA        NA
    168  0.612 0.434  0.037      NA       NA       NA       NA        NA        NA
    169  2.271 0.132  0.060      NA       NA       NA       NA        NA        NA
    170  1.699 0.192  0.078      NA       NA       NA       NA        NA        NA
    171  3.479 0.062  0.115      NA       NA       NA       NA        NA        NA
    172  1.468 0.226  0.069      NA       NA       NA       NA        NA        NA
    173 10.622 0.001  0.132      NA       NA       NA       NA        NA        NA
    174  4.241 0.039  0.081      NA       NA       NA       NA        NA        NA
    175  3.375 0.066  0.102      NA       NA       NA       NA        NA        NA
    176  7.442 0.006  0.124      NA       NA       NA       NA        NA        NA
    177  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    178  1.520 0.218  0.057      NA       NA       NA       NA        NA        NA
    179  4.550 0.033  0.088      NA       NA       NA       NA        NA        NA
    180  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    181  4.100 0.043  0.126      NA       NA       NA       NA        NA        NA
    182  0.520 0.471  0.046      NA       NA       NA       NA        NA        NA
    183  0.374 0.541  0.030      NA       NA       NA       NA        NA        NA
    184  1.396 0.237  0.049      NA       NA       NA       NA        NA        NA
    185  0.626 0.429  0.042      NA       NA       NA       NA        NA        NA
    186  1.625 0.202  0.059      NA       NA       NA       NA        NA        NA
    187  0.554 0.457  0.033      NA       NA       NA       NA        NA        NA
    188  0.572 0.449  0.031      NA       NA       NA       NA        NA        NA
    189  0.002 0.967 -0.003      NA       NA       NA       NA        NA        NA
    190  0.030 0.861  0.010      NA       NA       NA       NA        NA        NA
    191  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    192  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    193  0.017 0.896  0.007      NA       NA       NA       NA        NA        NA
    194  0.742 0.389  0.048      NA       NA       NA       NA        NA        NA
    195  1.875 0.171  0.080      NA       NA       NA       NA        NA        NA
    196  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    197  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    198 24.409 0.000  0.264      NA       NA       NA       NA        NA        NA
    199  0.497 0.481  0.048      NA       NA       NA       NA        NA        NA
    200  2.862 0.091  0.063      NA       NA       NA       NA        NA        NA
    201  2.160 0.142  0.050      NA       NA       NA       NA        NA        NA
    202  1.237 0.266  0.049      NA       NA       NA       NA        NA        NA
    203  0.223 0.637  0.018      NA       NA       NA       NA        NA        NA
    204  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    205 35.171 0.000  0.285      NA       NA       NA       NA        NA        NA
    206  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    207  0.180 0.671  0.017      NA       NA       NA       NA        NA        NA
    208  0.016 0.900 -0.004      NA       NA       NA       NA        NA        NA
    209  0.983 0.321  0.040      NA       NA       NA       NA        NA        NA
    210  1.393 0.238 -0.044      NA       NA       NA       NA        NA        NA
    211  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    212  0.387 0.534  0.040      NA       NA       NA       NA        NA        NA
    213  0.858 0.354  0.040      NA       NA       NA       NA        NA        NA
    214  0.796 0.372  0.036      NA       NA       NA       NA        NA        NA
    215  3.925 0.048  0.107      NA       NA       NA       NA        NA        NA
    216  0.775 0.379  0.041      NA       NA       NA       NA        NA        NA
    217  2.879 0.090  0.101      NA       NA       NA       NA        NA        NA
    218  1.644 0.200  0.054      NA       NA       NA       NA        NA        NA
    219  1.705 0.192  0.052      NA       NA       NA       NA        NA        NA
    220  2.697 0.101  0.093      NA       NA       NA       NA        NA        NA
    221  2.241 0.134  0.069      NA       NA       NA       NA        NA        NA
    222  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    223  0.963 0.327  0.062      NA       NA       NA       NA        NA        NA
    224  1.062 0.303  0.070      NA       NA       NA       NA        NA        NA
    225  0.344 0.557  0.038      NA       NA       NA       NA        NA        NA
    226  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    227  7.503 0.006  0.176      NA       NA       NA       NA        NA        NA
    228  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    229  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    230  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    231  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    232  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    233  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    234  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    235  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    236  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    237  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    238  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    239  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    240  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    241  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    242  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    243  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    244  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    245  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    246  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    247  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    248  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    249  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    250  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    251  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
    252  0.000 1.000  0.000      NA       NA       NA       NA        NA        NA
        minimum maximum identified
    1      -Inf     Inf      FALSE
    2      -Inf     Inf      FALSE
    3      -Inf     Inf      FALSE
    4      -Inf     Inf      FALSE
    5      -Inf     Inf      FALSE
    6      -Inf     Inf      FALSE
    7      -Inf     Inf      FALSE
    8      -Inf     Inf      FALSE
    9      -Inf     Inf      FALSE
    10     -Inf     Inf      FALSE
    11     -Inf     Inf      FALSE
    12     -Inf     Inf      FALSE
    13     -Inf     Inf      FALSE
    14     -Inf     Inf      FALSE
    15     -Inf     Inf      FALSE
    16     -Inf     Inf      FALSE
    17     -Inf     Inf      FALSE
    18     -Inf     Inf      FALSE
    19     -Inf     Inf      FALSE
    20     -Inf     Inf      FALSE
    21     -Inf     Inf      FALSE
    22       -1       1      FALSE
    23       -1       1      FALSE
    24       -1       1      FALSE
    25       -1       1      FALSE
    26       -1       1      FALSE
    27       -1       1      FALSE
    28       -1       1      FALSE
    29       -1       1      FALSE
    30       -1       1      FALSE
    31       -1       1      FALSE
    32       -1       1      FALSE
    33       -1       1      FALSE
    34       -1       1      FALSE
    35       -1       1      FALSE
    36       -1       1      FALSE
    37       -1       1      FALSE
    38       -1       1      FALSE
    39       -1       1      FALSE
    40       -1       1      FALSE
    41       -1       1      FALSE
    42       -1       1      FALSE
    43       -1       1      FALSE
    44       -1       1      FALSE
    45       -1       1      FALSE
    46       -1       1      FALSE
    47       -1       1      FALSE
    48       -1       1      FALSE
    49       -1       1      FALSE
    50       -1       1      FALSE
    51       -1       1      FALSE
    52       -1       1      FALSE
    53       -1       1      FALSE
    54       -1       1      FALSE
    55       -1       1      FALSE
    56       -1       1      FALSE
    57       -1       1      FALSE
    58       -1       1      FALSE
    59       -1       1      FALSE
    60       -1       1      FALSE
    61       -1       1      FALSE
    62       -1       1      FALSE
    63       -1       1      FALSE
    64       -1       1      FALSE
    65       -1       1      FALSE
    66       -1       1      FALSE
    67       -1       1      FALSE
    68       -1       1      FALSE
    69       -1       1      FALSE
    70       -1       1      FALSE
    71       -1       1      FALSE
    72       -1       1      FALSE
    73       -1       1      FALSE
    74       -1       1      FALSE
    75       -1       1      FALSE
    76       -1       1      FALSE
    77       -1       1      FALSE
    78       -1       1      FALSE
    79       -1       1      FALSE
    80       -1       1      FALSE
    81       -1       1      FALSE
    82       -1       1      FALSE
    83       -1       1      FALSE
    84       -1       1      FALSE
    85       -1       1      FALSE
    86       -1       1      FALSE
    87       -1       1      FALSE
    88       -1       1      FALSE
    89       -1       1      FALSE
    90       -1       1      FALSE
    91       -1       1      FALSE
    92       -1       1      FALSE
    93       -1       1      FALSE
    94       -1       1      FALSE
    95       -1       1      FALSE
    96       -1       1      FALSE
    97       -1       1      FALSE
    98       -1       1      FALSE
    99       -1       1      FALSE
    100      -1       1      FALSE
    101      -1       1      FALSE
    102      -1       1      FALSE
    103      -1       1      FALSE
    104      -1       1      FALSE
    105      -1       1      FALSE
    106      -1       1      FALSE
    107      -1       1      FALSE
    108      -1       1      FALSE
    109      -1       1      FALSE
    110      -1       1      FALSE
    111      -1       1      FALSE
    112      -1       1      FALSE
    113      -1       1      FALSE
    114      -1       1      FALSE
    115      -1       1      FALSE
    116      -1       1      FALSE
    117      -1       1      FALSE
    118      -1       1      FALSE
    119      -1       1      FALSE
    120      -1       1      FALSE
    121      -1       1      FALSE
    122      -1       1      FALSE
    123      -1       1      FALSE
    124      -1       1      FALSE
    125      -1       1      FALSE
    126      -1       1      FALSE
    127      -1       1      FALSE
    128      -1       1      FALSE
    129      -1       1      FALSE
    130      -1       1      FALSE
    131      -1       1      FALSE
    132      -1       1      FALSE
    133      -1       1      FALSE
    134      -1       1      FALSE
    135      -1       1      FALSE
    136      -1       1      FALSE
    137      -1       1      FALSE
    138      -1       1      FALSE
    139      -1       1      FALSE
    140      -1       1      FALSE
    141      -1       1      FALSE
    142      -1       1      FALSE
    143      -1       1      FALSE
    144      -1       1      FALSE
    145      -1       1      FALSE
    146      -1       1      FALSE
    147      -1       1      FALSE
    148      -1       1      FALSE
    149      -1       1      FALSE
    150      -1       1      FALSE
    151      -1       1      FALSE
    152      -1       1      FALSE
    153      -1       1      FALSE
    154      -1       1      FALSE
    155      -1       1      FALSE
    156      -1       1      FALSE
    157      -1       1      FALSE
    158      -1       1      FALSE
    159      -1       1      FALSE
    160      -1       1      FALSE
    161      -1       1      FALSE
    162      -1       1      FALSE
    163      -1       1      FALSE
    164      -1       1      FALSE
    165      -1       1      FALSE
    166      -1       1      FALSE
    167      -1       1      FALSE
    168      -1       1      FALSE
    169      -1       1      FALSE
    170      -1       1      FALSE
    171      -1       1      FALSE
    172      -1       1      FALSE
    173      -1       1      FALSE
    174      -1       1      FALSE
    175      -1       1      FALSE
    176      -1       1      FALSE
    177      -1       1      FALSE
    178      -1       1      FALSE
    179      -1       1      FALSE
    180      -1       1      FALSE
    181      -1       1      FALSE
    182      -1       1      FALSE
    183      -1       1      FALSE
    184      -1       1      FALSE
    185      -1       1      FALSE
    186      -1       1      FALSE
    187      -1       1      FALSE
    188      -1       1      FALSE
    189      -1       1      FALSE
    190      -1       1      FALSE
    191      -1       1      FALSE
    192      -1       1      FALSE
    193      -1       1      FALSE
    194      -1       1      FALSE
    195      -1       1      FALSE
    196      -1       1      FALSE
    197      -1       1      FALSE
    198      -1       1      FALSE
    199      -1       1      FALSE
    200      -1       1      FALSE
    201      -1       1      FALSE
    202      -1       1      FALSE
    203      -1       1      FALSE
    204      -1       1      FALSE
    205      -1       1      FALSE
    206      -1       1      FALSE
    207      -1       1      FALSE
    208      -1       1      FALSE
    209      -1       1      FALSE
    210      -1       1      FALSE
    211      -1       1      FALSE
    212      -1       1      FALSE
    213      -1       1      FALSE
    214      -1       1      FALSE
    215      -1       1      FALSE
    216      -1       1      FALSE
    217      -1       1      FALSE
    218      -1       1      FALSE
    219      -1       1      FALSE
    220      -1       1      FALSE
    221      -1       1      FALSE
    222      -1       1      FALSE
    223      -1       1      FALSE
    224      -1       1      FALSE
    225      -1       1      FALSE
    226      -1       1      FALSE
    227      -1       1      FALSE
    228      -1       1      FALSE
    229      -1       1      FALSE
    230      -1       1      FALSE
    231      -1       1      FALSE
    232       0     Inf      FALSE
    233       0     Inf      FALSE
    234       0     Inf      FALSE
    235       0     Inf      FALSE
    236       0     Inf      FALSE
    237       0     Inf      FALSE
    238       0     Inf      FALSE
    239       0     Inf      FALSE
    240       0     Inf      FALSE
    241       0     Inf      FALSE
    242       0     Inf      FALSE
    243       0     Inf      FALSE
    244       0     Inf      FALSE
    245       0     Inf      FALSE
    246       0     Inf      FALSE
    247       0     Inf      FALSE
    248       0     Inf      FALSE
    249       0     Inf      FALSE
    250       0     Inf      FALSE
    251       0     Inf      FALSE
    252       0     Inf      FALSE

### Network Figures

``` r
knitr::include_graphics("./figures/hahnel_irma-network_test.png")
```

![](./figures/hahnel_irma-network_test.png)

``` r
knitr::include_graphics("./figures/hahnel_irma-network_test_walktrap.png")
```

![](./figures/hahnel_irma-network_test_walktrap.png)

# Confirmatory Factor Analysis

## Training Data

### Fit Indices

``` r
four_factor_ind_train
```

                   npar                fmin               chisq                  df 
                 48.000               1.483             480.622             183.000 
                 pvalue      baseline.chisq         baseline.df     baseline.pvalue 
                  0.000            2087.306             210.000               0.000 
                    cfi                 tli                nnfi                 rfi 
                  0.841               0.818               0.818               0.736 
                    nfi                pnfi                 ifi                 rni 
                  0.770               0.671               0.844               0.841 
                   logl   unrestricted.logl                 aic                 bic 
              -4236.442                  NA            8568.883            8717.088 
                 ntotal                bic2               rmsea      rmsea.ci.lower 
                162.000            8565.130               0.100               0.089 
         rmsea.ci.upper        rmsea.pvalue                 rmr          rmr_nomean 
                  0.111               0.000               0.123               0.123 
                   srmr        srmr_bentler srmr_bentler_nomean                crmr 
                  0.100               0.100               0.100               0.105 
            crmr_nomean          srmr_mplus   srmr_mplus_nomean               cn_05 
                  0.105               0.100               0.100              73.658 
                  cn_01                 gfi                agfi                pgfi 
                 78.667               0.796               0.743               0.631 
                    mfi                ecvi 
                  0.399               3.559 

### Parameter Estimates

``` r
four_factor_par_train
```

                        lhs op                  rhs est.std    se      z pvalue
    1                    sa =~       Asked_for_it_1   0.758 0.039 19.675      0
    2                    sa =~       Asked_for_it_2   0.800 0.034 23.713      0
    3                    sa =~       Asked_for_it_3   0.671 0.048 14.046      0
    4                    sa =~       Asked_for_it_4   0.762 0.038 20.063      0
    5                    sa =~       Asked_for_it_5   0.570 0.057  9.924      0
    6                    sa =~       Asked_for_it_6   0.667 0.048 13.850      0
    7                    de =~     didn_t_mean_to_7   0.588 0.065  9.108      0
    8                    de =~     didn_t_mean_to_8   0.758 0.053 14.381      0
    9                    de =~     didn_t_mean_to_9   0.600 0.064  9.439      0
    10                   de =~    didn_t_mean_to_10   0.596 0.064  9.333      0
    11                   de =~    didn_t_mean_to_11   0.355 0.080  4.456      0
    12                   wi =~ wasnt_really_rape_12   0.293 0.075  3.888      0
    13                   wi =~ wasnt_really_rape_13   0.837 0.029 29.144      0
    14                   wi =~ wasnt_really_rape_14   0.900 0.022 40.828      0
    15                   wi =~ wasnt_really_rape_15   0.861 0.026 33.061      0
    16                   wi =~ Wasnt_really_rape_16   0.630 0.051 12.309      0
    17                   li =~          She_lied_17   0.624 0.051 12.178      0
    18                   li =~          She_lied_18   0.879 0.023 38.528      0
    19                   li =~          She_lied_19   0.886 0.022 40.422      0
    20                   li =~          She_lied_20   0.693 0.044 15.668      0
    21                   li =~          She_lied_21   0.832 0.028 29.441      0
    22       Asked_for_it_1 ~~       Asked_for_it_1   0.426 0.058  7.292      0
    23       Asked_for_it_2 ~~       Asked_for_it_2   0.360 0.054  6.663      0
    24       Asked_for_it_3 ~~       Asked_for_it_3   0.549 0.064  8.559      0
    25       Asked_for_it_4 ~~       Asked_for_it_4   0.419 0.058  7.225      0
    26       Asked_for_it_5 ~~       Asked_for_it_5   0.675 0.065 10.310      0
    27       Asked_for_it_6 ~~       Asked_for_it_6   0.554 0.064  8.619      0
    28     didn_t_mean_to_7 ~~     didn_t_mean_to_7   0.655 0.076  8.632      0
    29     didn_t_mean_to_8 ~~     didn_t_mean_to_8   0.425 0.080  5.310      0
    30     didn_t_mean_to_9 ~~     didn_t_mean_to_9   0.640 0.076  8.380      0
    31    didn_t_mean_to_10 ~~    didn_t_mean_to_10   0.644 0.076  8.459      0
    32    didn_t_mean_to_11 ~~    didn_t_mean_to_11   0.874 0.057 15.453      0
    33 wasnt_really_rape_12 ~~ wasnt_really_rape_12   0.914 0.044 20.687      0
    34 wasnt_really_rape_13 ~~ wasnt_really_rape_13   0.300 0.048  6.247      0
    35 wasnt_really_rape_14 ~~ wasnt_really_rape_14   0.189 0.040  4.766      0
    36 wasnt_really_rape_15 ~~ wasnt_really_rape_15   0.259 0.045  5.772      0
    37 Wasnt_really_rape_16 ~~ Wasnt_really_rape_16   0.603 0.065  9.333      0
    38          She_lied_17 ~~          She_lied_17   0.610 0.064  9.525      0
    39          She_lied_18 ~~          She_lied_18   0.228 0.040  5.692      0
    40          She_lied_19 ~~          She_lied_19   0.214 0.039  5.519      0
    41          She_lied_20 ~~          She_lied_20   0.519 0.061  8.458      0
    42          She_lied_21 ~~          She_lied_21   0.307 0.047  6.525      0
    43                   sa ~~                   sa   1.000 0.000     NA     NA
    44                   de ~~                   de   1.000 0.000     NA     NA
    45                   wi ~~                   wi   1.000 0.000     NA     NA
    46                   li ~~                   li   1.000 0.000     NA     NA
    47                   sa ~~                   de   0.534 0.075  7.090      0
    48                   sa ~~                   wi   0.660 0.055 12.099      0
    49                   sa ~~                   li   0.830 0.035 23.583      0
    50                   de ~~                   wi   0.467 0.078  5.978      0
    51                   de ~~                   li   0.457 0.078  5.817      0
    52                   wi ~~                   li   0.498 0.067  7.464      0
       ci.lower ci.upper
    1     0.682    0.833
    2     0.734    0.866
    3     0.578    0.765
    4     0.688    0.837
    5     0.457    0.683
    6     0.573    0.762
    7     0.461    0.714
    8     0.655    0.862
    9     0.476    0.725
    10    0.471    0.721
    11    0.199    0.511
    12    0.145    0.441
    13    0.780    0.893
    14    0.857    0.944
    15    0.810    0.912
    16    0.530    0.731
    17    0.524    0.725
    18    0.834    0.923
    19    0.843    0.929
    20    0.607    0.780
    21    0.777    0.888
    22    0.311    0.540
    23    0.254    0.466
    24    0.424    0.675
    25    0.305    0.532
    26    0.547    0.803
    27    0.428    0.681
    28    0.506    0.803
    29    0.268    0.582
    30    0.490    0.789
    31    0.495    0.794
    32    0.763    0.985
    33    0.828    1.001
    34    0.206    0.394
    35    0.111    0.267
    36    0.171    0.347
    37    0.476    0.729
    38    0.485    0.736
    39    0.150    0.307
    40    0.138    0.291
    41    0.399    0.639
    42    0.215    0.399
    43    1.000    1.000
    44    1.000    1.000
    45    1.000    1.000
    46    1.000    1.000
    47    0.387    0.682
    48    0.553    0.767
    49    0.761    0.899
    50    0.314    0.620
    51    0.303    0.610
    52    0.367    0.629

## Test Data

### Fit Indices

``` r
four_factor_ind
```

                   npar                fmin               chisq                  df 
                 48.000               1.250             405.151             183.000 
                 pvalue      baseline.chisq         baseline.df     baseline.pvalue 
                  0.000            2079.195             210.000               0.000 
                    cfi                 tli                nnfi                 rfi 
                  0.881               0.864               0.864               0.776 
                    nfi                pnfi                 ifi                 rni 
                  0.805               0.702               0.883               0.881 
                   logl   unrestricted.logl                 aic                 bic 
              -4111.970                  NA            8319.939            8468.144 
                 ntotal                bic2               rmsea      rmsea.ci.lower 
                162.000            8316.186               0.087               0.075 
         rmsea.ci.upper        rmsea.pvalue                 rmr          rmr_nomean 
                  0.098               0.000               0.122               0.122 
                   srmr        srmr_bentler srmr_bentler_nomean                crmr 
                  0.092               0.092               0.092               0.097 
            crmr_nomean          srmr_mplus   srmr_mplus_nomean               cn_05 
                  0.097               0.092               0.092              87.193 
                  cn_01                 gfi                agfi                pgfi 
                 93.135               0.815               0.767               0.646 
                    mfi                ecvi 
                  0.504               3.094 

### Parameter Estimates

``` r
four_factor_par
```

                        lhs op                  rhs est.std    se      z pvalue
    1                    sa =~       Asked_for_it_1   0.735 0.040 18.260  0.000
    2                    sa =~       Asked_for_it_2   0.796 0.033 23.944  0.000
    3                    sa =~       Asked_for_it_3   0.661 0.048 13.715  0.000
    4                    sa =~       Asked_for_it_4   0.792 0.034 23.474  0.000
    5                    sa =~       Asked_for_it_5   0.573 0.056 10.157  0.000
    6                    sa =~       Asked_for_it_6   0.695 0.045 15.561  0.000
    7                    de =~     didn_t_mean_to_7   0.689 0.050 13.715  0.000
    8                    de =~     didn_t_mean_to_8   0.695 0.050 13.997  0.000
    9                    de =~     didn_t_mean_to_9   0.818 0.039 21.144  0.000
    10                   de =~    didn_t_mean_to_10   0.556 0.062  8.968  0.000
    11                   de =~    didn_t_mean_to_11   0.416 0.072  5.769  0.000
    12                   wi =~ wasnt_really_rape_12   0.385 0.070  5.475  0.000
    13                   wi =~ wasnt_really_rape_13   0.814 0.032 25.188  0.000
    14                   wi =~ wasnt_really_rape_14   0.937 0.022 42.771  0.000
    15                   wi =~ wasnt_really_rape_15   0.512 0.062  8.300  0.000
    16                   wi =~ Wasnt_really_rape_16   0.674 0.047 14.353  0.000
    17                   li =~          She_lied_17   0.620 0.051 12.081  0.000
    18                   li =~          She_lied_18   0.904 0.019 47.172  0.000
    19                   li =~          She_lied_19   0.877 0.022 39.307  0.000
    20                   li =~          She_lied_20   0.667 0.047 14.291  0.000
    21                   li =~          She_lied_21   0.817 0.030 27.597  0.000
    22       Asked_for_it_1 ~~       Asked_for_it_1   0.460 0.059  7.773  0.000
    23       Asked_for_it_2 ~~       Asked_for_it_2   0.366 0.053  6.910  0.000
    24       Asked_for_it_3 ~~       Asked_for_it_3   0.564 0.064  8.858  0.000
    25       Asked_for_it_4 ~~       Asked_for_it_4   0.373 0.053  6.971  0.000
    26       Asked_for_it_5 ~~       Asked_for_it_5   0.671 0.065 10.365  0.000
    27       Asked_for_it_6 ~~       Asked_for_it_6   0.518 0.062  8.348  0.000
    28     didn_t_mean_to_7 ~~     didn_t_mean_to_7   0.526 0.069  7.599  0.000
    29     didn_t_mean_to_8 ~~     didn_t_mean_to_8   0.517 0.069  7.496  0.000
    30     didn_t_mean_to_9 ~~     didn_t_mean_to_9   0.331 0.063  5.241  0.000
    31    didn_t_mean_to_10 ~~    didn_t_mean_to_10   0.691 0.069 10.012  0.000
    32    didn_t_mean_to_11 ~~    didn_t_mean_to_11   0.827 0.060 13.745  0.000
    33 wasnt_really_rape_12 ~~ wasnt_really_rape_12   0.852 0.054 15.698  0.000
    34 wasnt_really_rape_13 ~~ wasnt_really_rape_13   0.337 0.053  6.402  0.000
    35 wasnt_really_rape_14 ~~ wasnt_really_rape_14   0.122 0.041  2.975  0.003
    36 wasnt_really_rape_15 ~~ wasnt_really_rape_15   0.738 0.063 11.706  0.000
    37 Wasnt_really_rape_16 ~~ Wasnt_really_rape_16   0.545 0.063  8.611  0.000
    38          She_lied_17 ~~          She_lied_17   0.615 0.064  9.662  0.000
    39          She_lied_18 ~~          She_lied_18   0.182 0.035  5.260  0.000
    40          She_lied_19 ~~          She_lied_19   0.231 0.039  5.891  0.000
    41          She_lied_20 ~~          She_lied_20   0.555 0.062  8.917  0.000
    42          She_lied_21 ~~          She_lied_21   0.332 0.048  6.860  0.000
    43                   sa ~~                   sa   1.000 0.000     NA     NA
    44                   de ~~                   de   1.000 0.000     NA     NA
    45                   wi ~~                   wi   1.000 0.000     NA     NA
    46                   li ~~                   li   1.000 0.000     NA     NA
    47                   sa ~~                   de   0.675 0.058 11.549  0.000
    48                   sa ~~                   wi   0.743 0.046 16.184  0.000
    49                   sa ~~                   li   0.881 0.028 30.995  0.000
    50                   de ~~                   wi   0.562 0.067  8.401  0.000
    51                   de ~~                   li   0.693 0.054 12.817  0.000
    52                   wi ~~                   li   0.587 0.059  9.905  0.000
       ci.lower ci.upper
    1     0.656    0.814
    2     0.731    0.861
    3     0.566    0.755
    4     0.726    0.858
    5     0.463    0.684
    6     0.607    0.782
    7     0.590    0.787
    8     0.598    0.792
    9     0.742    0.893
    10    0.435    0.678
    11    0.275    0.558
    12    0.247    0.523
    13    0.751    0.878
    14    0.894    0.980
    15    0.391    0.632
    16    0.582    0.766
    17    0.520    0.721
    18    0.867    0.942
    19    0.833    0.921
    20    0.576    0.758
    21    0.759    0.875
    22    0.344    0.576
    23    0.262    0.470
    24    0.439    0.688
    25    0.268    0.477
    26    0.544    0.798
    27    0.396    0.639
    28    0.390    0.661
    29    0.382    0.652
    30    0.207    0.455
    31    0.555    0.826
    32    0.709    0.944
    33    0.745    0.958
    34    0.234    0.440
    35    0.042    0.203
    36    0.615    0.862
    37    0.421    0.670
    38    0.490    0.740
    39    0.114    0.250
    40    0.154    0.307
    41    0.433    0.677
    42    0.237    0.427
    43    1.000    1.000
    44    1.000    1.000
    45    1.000    1.000
    46    1.000    1.000
    47    0.561    0.790
    48    0.653    0.833
    49    0.825    0.937
    50    0.431    0.693
    51    0.587    0.799
    52    0.471    0.703
