Balezina (2023) - Network Re-analysis
================

# Network Analysis of Study 1

## Training Network

``` r
network_reduced_fit_ind_1 %>% 
  knitr::kable()
```

|                   | Measure           |         Value |
|:------------------|:------------------|--------------:|
| logl              | logl              | -1.790435e+04 |
| unrestricted.logl | unrestricted.logl | -1.777642e+04 |
| baseline.logl     | baseline.logl     | -1.931198e+04 |
| nvar              | nvar              |  2.100000e+01 |
| nobs              | nobs              |  2.520000e+02 |
| npar              | npar              |  8.700000e+01 |
| df                | df                |  1.650000e+02 |
| objective         | objective         |  3.976058e+01 |
| chisq             | chisq             |  2.558546e+02 |
| pvalue            | pvalue            |  7.300000e-06 |
| baseline.chisq    | baseline.chisq    |  3.071129e+03 |
| baseline.df       | baseline.df       |  2.100000e+02 |
| baseline.pvalue   | baseline.pvalue   |  0.000000e+00 |
| nfi               | nfi               |  9.166904e-01 |
| pnfi              | pnfi              |  7.202567e-01 |
| tli               | tli               |  9.595848e-01 |
| nnfi              | nnfi              |  9.595848e-01 |
| rfi               | rfi               |  8.939696e-01 |
| ifi               | ifi               |  9.687369e-01 |
| rni               | rni               |  9.682452e-01 |
| cfi               | cfi               |  9.682452e-01 |
| rmsea             | rmsea             |  3.471150e-02 |
| rmsea.ci.lower    | rmsea.ci.lower    |  2.612620e-02 |
| rmsea.ci.upper    | rmsea.ci.upper    |  4.280890e-02 |
| rmsea.pvalue      | rmsea.pvalue      |  9.993652e-01 |
| aic.ll            | aic.ll            |  3.598269e+04 |
| aic.ll2           | aic.ll2           |  3.602419e+04 |
| aic.x             | aic.x             | -7.414539e+01 |
| aic.x2            | aic.x2            |  4.298546e+02 |
| bic               | bic               |  3.634154e+04 |
| bic2              | bic2              |  3.606543e+04 |
| ebic.25           | ebic.25           |  3.660641e+04 |
| ebic.5            | ebic.5            |  3.687129e+04 |
| ebic.75           | ebic.75           |  3.708319e+04 |
| ebic1             | ebic1             |  3.740103e+04 |

``` r
network_reduced_pars_1
```

        var1 var1_id  op var2 var2_id         est std         se             p
    1   li_2       1  ~1 <NA>      NA  4.08096280  NA 0.08395341  0.000000e+00
    2   li_3       2  ~1 <NA>      NA  3.25382932  NA 0.08374074  0.000000e+00
    3   li_4       3  ~1 <NA>      NA  3.11816193  NA 0.08501930 1.767212e-294
    4   fi_3       4  ~1 <NA>      NA  5.36542670  NA 0.08440758  0.000000e+00
    5   fi_4       5  ~1 <NA>      NA  4.92341357  NA 0.09503672  0.000000e+00
    6   fi_5       6  ~1 <NA>      NA  5.56892779  NA 0.08867083  0.000000e+00
    7   de_1       7  ~1 <NA>      NA  3.32822757  NA 0.09155832 2.542845e-289
    8   de_2       8  ~1 <NA>      NA  2.71334792  NA 0.08859979 5.729898e-206
    9   de_5       9  ~1 <NA>      NA  4.29102845  NA 0.08926860  0.000000e+00
    10  mt_2      10  ~1 <NA>      NA  3.25382932  NA 0.08975705 9.403924e-288
    11  mt_3      11  ~1 <NA>      NA  2.72210066  NA 0.08871477 9.381406e-207
    12  mt_4      12  ~1 <NA>      NA  3.75054705  NA 0.09308304  0.000000e+00
    13  nr_3      13  ~1 <NA>      NA  1.81400438  NA 0.06517668 1.773669e-170
    14  nr_4      14  ~1 <NA>      NA  2.42231947  NA 0.07635138 6.819002e-221
    15  te_4      15  ~1 <NA>      NA  1.87527352  NA 0.06424064 2.494321e-187
    16  sa_1      16  ~1 <NA>      NA  3.55798687  NA 0.09524793 2.102979e-305
    17  sa_4      17  ~1 <NA>      NA  3.65207877  NA 0.09577349  0.000000e+00
    18  sa_7      18  ~1 <NA>      NA  4.13785558  NA 0.09598909  0.000000e+00
    19  wi_1      19  ~1 <NA>      NA  2.36761488  NA 0.07712349 5.867256e-207
    20  wi_4      20  ~1 <NA>      NA  3.18599562  NA 0.07740081  0.000000e+00
    21  wi_5      21  ~1 <NA>      NA  2.85557987  NA 0.07963511 1.365320e-281
    22  li_3       2  -- li_2       1  0.26980914  NA 0.03797851  1.209699e-12
    23  li_4       3  -- li_2       1  0.15805453  NA 0.04066136  1.014514e-04
    24  fi_3       4  -- li_2       1  0.00000000  NA         NA            NA
    25  fi_4       5  -- li_2       1  0.00000000  NA         NA            NA
    26  fi_5       6  -- li_2       1  0.00000000  NA         NA            NA
    27  de_1       7  -- li_2       1  0.00000000  NA         NA            NA
    28  de_2       8  -- li_2       1  0.09975952  NA 0.03595936  5.533262e-03
    29  de_5       9  -- li_2       1  0.12819316  NA 0.03609726  3.832952e-04
    30  mt_2      10  -- li_2       1  0.00000000  NA         NA            NA
    31  mt_3      11  -- li_2       1  0.00000000  NA         NA            NA
    32  mt_4      12  -- li_2       1  0.00000000  NA         NA            NA
    33  nr_3      13  -- li_2       1  0.00000000  NA         NA            NA
    34  nr_4      14  -- li_2       1  0.00000000  NA         NA            NA
    35  te_4      15  -- li_2       1  0.00000000  NA         NA            NA
    36  sa_1      16  -- li_2       1  0.11762143  NA 0.03543820  9.032188e-04
    37  sa_4      17  -- li_2       1  0.10594746  NA 0.03621890  3.442370e-03
    38  sa_7      18  -- li_2       1  0.00000000  NA         NA            NA
    39  wi_1      19  -- li_2       1  0.00000000  NA         NA            NA
    40  wi_4      20  -- li_2       1  0.24101657  NA 0.03361387  7.491434e-13
    41  wi_5      21  -- li_2       1  0.00000000  NA         NA            NA
    42  li_4       3  -- li_3       2  0.14385591  NA 0.04278638  7.732714e-04
    43  fi_3       4  -- li_3       2  0.00000000  NA         NA            NA
    44  fi_4       5  -- li_3       2  0.00000000  NA         NA            NA
    45  fi_5       6  -- li_3       2  0.00000000  NA         NA            NA
    46  de_1       7  -- li_3       2  0.00000000  NA         NA            NA
    47  de_2       8  -- li_3       2  0.00000000  NA         NA            NA
    48  de_5       9  -- li_3       2  0.00000000  NA         NA            NA
    49  mt_2      10  -- li_3       2  0.00000000  NA         NA            NA
    50  mt_3      11  -- li_3       2  0.00000000  NA         NA            NA
    51  mt_4      12  -- li_3       2  0.00000000  NA         NA            NA
    52  nr_3      13  -- li_3       2  0.00000000  NA         NA            NA
    53  nr_4      14  -- li_3       2  0.14608206  NA 0.03434139  2.101545e-05
    54  te_4      15  -- li_3       2  0.00000000  NA         NA            NA
    55  sa_1      16  -- li_3       2  0.00000000  NA         NA            NA
    56  sa_4      17  -- li_3       2  0.00000000  NA         NA            NA
    57  sa_7      18  -- li_3       2  0.00000000  NA         NA            NA
    58  wi_1      19  -- li_3       2  0.20897355  NA 0.03779175  3.209473e-08
    59  wi_4      20  -- li_3       2  0.00000000  NA         NA            NA
    60  wi_5      21  -- li_3       2  0.00000000  NA         NA            NA
    61  fi_3       4  -- li_4       3  0.00000000  NA         NA            NA
    62  fi_4       5  -- li_4       3  0.00000000  NA         NA            NA
    63  fi_5       6  -- li_4       3  0.00000000  NA         NA            NA
    64  de_1       7  -- li_4       3  0.00000000  NA         NA            NA
    65  de_2       8  -- li_4       3  0.00000000  NA         NA            NA
    66  de_5       9  -- li_4       3  0.00000000  NA         NA            NA
    67  mt_2      10  -- li_4       3  0.00000000  NA         NA            NA
    68  mt_3      11  -- li_4       3  0.00000000  NA         NA            NA
    69  mt_4      12  -- li_4       3  0.00000000  NA         NA            NA
    70  nr_3      13  -- li_4       3  0.00000000  NA         NA            NA
    71  nr_4      14  -- li_4       3  0.00000000  NA         NA            NA
    72  te_4      15  -- li_4       3  0.12308867  NA 0.03680051  8.235555e-04
    73  sa_1      16  -- li_4       3  0.00000000  NA         NA            NA
    74  sa_4      17  -- li_4       3  0.00000000  NA         NA            NA
    75  sa_7      18  -- li_4       3  0.00000000  NA         NA            NA
    76  wi_1      19  -- li_4       3  0.00000000  NA         NA            NA
    77  wi_4      20  -- li_4       3  0.00000000  NA         NA            NA
    78  wi_5      21  -- li_4       3  0.16031114  NA 0.03654982  1.154017e-05
    79  fi_4       5  -- fi_3       4  0.17613056  NA 0.04476823  8.344788e-05
    80  fi_5       6  -- fi_3       4  0.22467943  NA 0.04344077  2.314938e-07
    81  de_1       7  -- fi_3       4  0.00000000  NA         NA            NA
    82  de_2       8  -- fi_3       4  0.00000000  NA         NA            NA
    83  de_5       9  -- fi_3       4  0.00000000  NA         NA            NA
    84  mt_2      10  -- fi_3       4  0.00000000  NA         NA            NA
    85  mt_3      11  -- fi_3       4  0.00000000  NA         NA            NA
    86  mt_4      12  -- fi_3       4  0.00000000  NA         NA            NA
    87  nr_3      13  -- fi_3       4 -0.13071110  NA 0.03673257  3.730467e-04
    88  nr_4      14  -- fi_3       4  0.00000000  NA         NA            NA
    89  te_4      15  -- fi_3       4  0.00000000  NA         NA            NA
    90  sa_1      16  -- fi_3       4  0.00000000  NA         NA            NA
    91  sa_4      17  -- fi_3       4  0.00000000  NA         NA            NA
    92  sa_7      18  -- fi_3       4  0.00000000  NA         NA            NA
    93  wi_1      19  -- fi_3       4  0.00000000  NA         NA            NA
    94  wi_4      20  -- fi_3       4  0.00000000  NA         NA            NA
    95  wi_5      21  -- fi_3       4  0.00000000  NA         NA            NA
    96  fi_5       6  -- fi_4       5  0.24642088  NA 0.04319200  1.161772e-08
    97  de_1       7  -- fi_4       5  0.00000000  NA         NA            NA
    98  de_2       8  -- fi_4       5  0.00000000  NA         NA            NA
    99  de_5       9  -- fi_4       5  0.00000000  NA         NA            NA
    100 mt_2      10  -- fi_4       5  0.00000000  NA         NA            NA
    101 mt_3      11  -- fi_4       5  0.00000000  NA         NA            NA
    102 mt_4      12  -- fi_4       5  0.00000000  NA         NA            NA
    103 nr_3      13  -- fi_4       5  0.00000000  NA         NA            NA
    104 nr_4      14  -- fi_4       5  0.00000000  NA         NA            NA
    105 te_4      15  -- fi_4       5  0.00000000  NA         NA            NA
    106 sa_1      16  -- fi_4       5  0.00000000  NA         NA            NA
    107 sa_4      17  -- fi_4       5  0.00000000  NA         NA            NA
    108 sa_7      18  -- fi_4       5  0.00000000  NA         NA            NA
    109 wi_1      19  -- fi_4       5  0.00000000  NA         NA            NA
    110 wi_4      20  -- fi_4       5  0.00000000  NA         NA            NA
    111 wi_5      21  -- fi_4       5  0.00000000  NA         NA            NA
    112 de_1       7  -- fi_5       6  0.00000000  NA         NA            NA
    113 de_2       8  -- fi_5       6  0.00000000  NA         NA            NA
    114 de_5       9  -- fi_5       6  0.00000000  NA         NA            NA
    115 mt_2      10  -- fi_5       6  0.00000000  NA         NA            NA
    116 mt_3      11  -- fi_5       6  0.00000000  NA         NA            NA
    117 mt_4      12  -- fi_5       6  0.00000000  NA         NA            NA
    118 nr_3      13  -- fi_5       6  0.00000000  NA         NA            NA
    119 nr_4      14  -- fi_5       6 -0.13026431  NA 0.03080614  2.352355e-05
    120 te_4      15  -- fi_5       6  0.00000000  NA         NA            NA
    121 sa_1      16  -- fi_5       6  0.00000000  NA         NA            NA
    122 sa_4      17  -- fi_5       6  0.00000000  NA         NA            NA
    123 sa_7      18  -- fi_5       6  0.00000000  NA         NA            NA
    124 wi_1      19  -- fi_5       6  0.00000000  NA         NA            NA
    125 wi_4      20  -- fi_5       6  0.00000000  NA         NA            NA
    126 wi_5      21  -- fi_5       6  0.00000000  NA         NA            NA
    127 de_2       8  -- de_1       7  0.21514751  NA 0.04090138  1.439362e-07
    128 de_5       9  -- de_1       7  0.17349286  NA 0.04200899  3.629238e-05
    129 mt_2      10  -- de_1       7  0.00000000  NA         NA            NA
    130 mt_3      11  -- de_1       7  0.00000000  NA         NA            NA
    131 mt_4      12  -- de_1       7  0.00000000  NA         NA            NA
    132 nr_3      13  -- de_1       7  0.00000000  NA         NA            NA
    133 nr_4      14  -- de_1       7  0.20242629  NA 0.03307005  9.291047e-10
    134 te_4      15  -- de_1       7  0.00000000  NA         NA            NA
    135 sa_1      16  -- de_1       7  0.00000000  NA         NA            NA
    136 sa_4      17  -- de_1       7  0.00000000  NA         NA            NA
    137 sa_7      18  -- de_1       7  0.16524375  NA 0.03442992  1.591236e-06
    138 wi_1      19  -- de_1       7  0.00000000  NA         NA            NA
    139 wi_4      20  -- de_1       7  0.00000000  NA         NA            NA
    140 wi_5      21  -- de_1       7  0.00000000  NA         NA            NA
    141 de_5       9  -- de_2       8  0.15002400  NA 0.04447809  7.435769e-04
    142 mt_2      10  -- de_2       8  0.00000000  NA         NA            NA
    143 mt_3      11  -- de_2       8  0.00000000  NA         NA            NA
    144 mt_4      12  -- de_2       8  0.18025723  NA 0.03576736  4.662307e-07
    145 nr_3      13  -- de_2       8  0.00000000  NA         NA            NA
    146 nr_4      14  -- de_2       8  0.00000000  NA         NA            NA
    147 te_4      15  -- de_2       8  0.00000000  NA         NA            NA
    148 sa_1      16  -- de_2       8  0.00000000  NA         NA            NA
    149 sa_4      17  -- de_2       8  0.00000000  NA         NA            NA
    150 sa_7      18  -- de_2       8  0.00000000  NA         NA            NA
    151 wi_1      19  -- de_2       8  0.00000000  NA         NA            NA
    152 wi_4      20  -- de_2       8  0.00000000  NA         NA            NA
    153 wi_5      21  -- de_2       8  0.00000000  NA         NA            NA
    154 mt_2      10  -- de_5       9  0.00000000  NA         NA            NA
    155 mt_3      11  -- de_5       9  0.00000000  NA         NA            NA
    156 mt_4      12  -- de_5       9  0.00000000  NA         NA            NA
    157 nr_3      13  -- de_5       9  0.00000000  NA         NA            NA
    158 nr_4      14  -- de_5       9  0.00000000  NA         NA            NA
    159 te_4      15  -- de_5       9  0.00000000  NA         NA            NA
    160 sa_1      16  -- de_5       9  0.00000000  NA         NA            NA
    161 sa_4      17  -- de_5       9  0.00000000  NA         NA            NA
    162 sa_7      18  -- de_5       9  0.00000000  NA         NA            NA
    163 wi_1      19  -- de_5       9  0.00000000  NA         NA            NA
    164 wi_4      20  -- de_5       9  0.00000000  NA         NA            NA
    165 wi_5      21  -- de_5       9  0.00000000  NA         NA            NA
    166 mt_3      11  -- mt_2      10  0.00000000  NA         NA            NA
    167 mt_4      12  -- mt_2      10  0.35936000  NA 0.03619064  3.093701e-23
    168 nr_3      13  -- mt_2      10  0.00000000  NA         NA            NA
    169 nr_4      14  -- mt_2      10  0.00000000  NA         NA            NA
    170 te_4      15  -- mt_2      10  0.00000000  NA         NA            NA
    171 sa_1      16  -- mt_2      10  0.00000000  NA         NA            NA
    172 sa_4      17  -- mt_2      10  0.09969822  NA 0.03579874  5.353360e-03
    173 sa_7      18  -- mt_2      10  0.00000000  NA         NA            NA
    174 wi_1      19  -- mt_2      10  0.00000000  NA         NA            NA
    175 wi_4      20  -- mt_2      10  0.14955646  NA 0.03210672  3.191341e-06
    176 wi_5      21  -- mt_2      10  0.00000000  NA         NA            NA
    177 mt_4      12  -- mt_3      11  0.22728049  NA 0.03591689  2.484308e-10
    178 nr_3      13  -- mt_3      11  0.11419996  NA 0.03800652  2.658022e-03
    179 nr_4      14  -- mt_3      11  0.00000000  NA         NA            NA
    180 te_4      15  -- mt_3      11  0.00000000  NA         NA            NA
    181 sa_1      16  -- mt_3      11  0.00000000  NA         NA            NA
    182 sa_4      17  -- mt_3      11  0.00000000  NA         NA            NA
    183 sa_7      18  -- mt_3      11  0.00000000  NA         NA            NA
    184 wi_1      19  -- mt_3      11  0.16314635  NA 0.03600588  5.867662e-06
    185 wi_4      20  -- mt_3      11  0.00000000  NA         NA            NA
    186 wi_5      21  -- mt_3      11  0.00000000  NA         NA            NA
    187 nr_3      13  -- mt_4      12  0.00000000  NA         NA            NA
    188 nr_4      14  -- mt_4      12  0.00000000  NA         NA            NA
    189 te_4      15  -- mt_4      12  0.00000000  NA         NA            NA
    190 sa_1      16  -- mt_4      12  0.17260097  NA 0.03703650  3.157584e-06
    191 sa_4      17  -- mt_4      12  0.00000000  NA         NA            NA
    192 sa_7      18  -- mt_4      12  0.15137138  NA 0.03695546  4.202608e-05
    193 wi_1      19  -- mt_4      12  0.00000000  NA         NA            NA
    194 wi_4      20  -- mt_4      12  0.00000000  NA         NA            NA
    195 wi_5      21  -- mt_4      12  0.00000000  NA         NA            NA
    196 nr_4      14  -- nr_3      13  0.18951161  NA 0.03960019  1.704567e-06
    197 te_4      15  -- nr_3      13  0.27093316  NA 0.04122526  4.963799e-11
    198 sa_1      16  -- nr_3      13  0.00000000  NA         NA            NA
    199 sa_4      17  -- nr_3      13  0.10700378  NA 0.03344990  1.379402e-03
    200 sa_7      18  -- nr_3      13  0.00000000  NA         NA            NA
    201 wi_1      19  -- nr_3      13  0.00000000  NA         NA            NA
    202 wi_4      20  -- nr_3      13  0.00000000  NA         NA            NA
    203 wi_5      21  -- nr_3      13  0.00000000  NA         NA            NA
    204 te_4      15  -- nr_4      14  0.35230979  NA 0.03597532  1.205470e-22
    205 sa_1      16  -- nr_4      14  0.20357473  NA 0.03170984  1.363442e-10
    206 sa_4      17  -- nr_4      14  0.00000000  NA         NA            NA
    207 sa_7      18  -- nr_4      14  0.00000000  NA         NA            NA
    208 wi_1      19  -- nr_4      14  0.09505648  NA 0.03297392  3.941851e-03
    209 wi_4      20  -- nr_4      14  0.00000000  NA         NA            NA
    210 wi_5      21  -- nr_4      14  0.00000000  NA         NA            NA
    211 sa_1      16  -- te_4      15  0.00000000  NA         NA            NA
    212 sa_4      17  -- te_4      15  0.00000000  NA         NA            NA
    213 sa_7      18  -- te_4      15  0.00000000  NA         NA            NA
    214 wi_1      19  -- te_4      15  0.00000000  NA         NA            NA
    215 wi_4      20  -- te_4      15  0.11189358  NA 0.03086284  2.883906e-04
    216 wi_5      21  -- te_4      15  0.00000000  NA         NA            NA
    217 sa_4      17  -- sa_1      16  0.18782972  NA 0.04098301  4.581058e-06
    218 sa_7      18  -- sa_1      16  0.27538241  NA 0.03989237  5.086759e-12
    219 wi_1      19  -- sa_1      16  0.00000000  NA         NA            NA
    220 wi_4      20  -- sa_1      16  0.00000000  NA         NA            NA
    221 wi_5      21  -- sa_1      16  0.00000000  NA         NA            NA
    222 sa_7      18  -- sa_4      17  0.35666343  NA 0.03769592  3.032892e-21
    223 wi_1      19  -- sa_4      17  0.00000000  NA         NA            NA
    224 wi_4      20  -- sa_4      17  0.00000000  NA         NA            NA
    225 wi_5      21  -- sa_4      17  0.14449818  NA 0.03151393  4.535173e-06
    226 wi_1      19  -- sa_7      18  0.00000000  NA         NA            NA
    227 wi_4      20  -- sa_7      18  0.00000000  NA         NA            NA
    228 wi_5      21  -- sa_7      18  0.00000000  NA         NA            NA
    229 wi_4      20  -- wi_1      19  0.20998799  NA 0.03982908  1.347778e-07
    230 wi_5      21  -- wi_1      19  0.23954611  NA 0.04038107  2.990142e-09
    231 wi_5      21  -- wi_4      20  0.39743195  NA 0.03590061  1.747369e-28
    232 li_2       1 ~/~ li_2       1  1.33425090  NA 0.04249902 2.378018e-216
    233 li_3       2 ~/~ li_3       2  1.44050316  NA 0.04713115 3.716637e-205
    234 li_4       3 ~/~ li_4       3  1.58423630  NA 0.05216726 1.436273e-202
    235 fi_3       4 ~/~ fi_3       4  1.67074308  NA 0.05513718 1.093112e-201
    236 fi_4       5 ~/~ fi_4       5  1.90159622  NA 0.06289921 8.880039e-201
    237 fi_5       6 ~/~ fi_5       6  1.71873832  NA 0.05661982 2.108287e-202
    238 de_1       7 ~/~ de_1       7  1.66010508  NA 0.05412263 1.303360e-206
    239 de_2       8 ~/~ de_2       8  1.67805571  NA 0.05517914 3.924019e-203
    240 de_5       9 ~/~ de_5       9  1.77377753  NA 0.05862619 4.387877e-201
    241 mt_2      10 ~/~ mt_2      10  1.61032709  NA 0.05275121 1.148296e-204
    242 mt_3      11 ~/~ mt_3      11  1.71705516  NA 0.05650956 8.612781e-203
    243 mt_4      12 ~/~ mt_4      12  1.50993387  NA 0.04782137 8.278765e-219
    244 nr_3      13 ~/~ nr_3      13  1.13871475  NA 0.03719538 7.869144e-206
    245 nr_4      14 ~/~ nr_4      14  1.13028893  NA 0.03501647 1.388711e-228
    246 te_4      15 ~/~ te_4      15  1.04251540  NA 0.03404723 6.696595e-206
    247 sa_1      16 ~/~ sa_1      16  1.47398704  NA 0.04757820 9.930756e-211
    248 sa_4      17 ~/~ sa_4      17  1.48866059  NA 0.04799963 3.490578e-211
    249 sa_7      18 ~/~ sa_7      18  1.48212085  NA 0.04825626 3.753183e-207
    250 wi_1      19 ~/~ wi_1      19  1.25199216  NA 0.04041529 1.060741e-210
    251 wi_4      20 ~/~ wi_4      20  1.13232296  NA 0.03589271 1.944126e-218
    252 wi_5      21 ~/~ wi_5      21  1.21963826  NA 0.03957379 1.443015e-208
        se_boot p_boot matrix row col par      group group_id fixed           mi
    1        NA     NA     mu   1   1   1 fullsample        1 FALSE 0.000000e+00
    2        NA     NA     mu   2   1   2 fullsample        1 FALSE 0.000000e+00
    3        NA     NA     mu   3   1   3 fullsample        1 FALSE 0.000000e+00
    4        NA     NA     mu   4   1   4 fullsample        1 FALSE 0.000000e+00
    5        NA     NA     mu   5   1   5 fullsample        1 FALSE 0.000000e+00
    6        NA     NA     mu   6   1   6 fullsample        1 FALSE 0.000000e+00
    7        NA     NA     mu   7   1   7 fullsample        1 FALSE 0.000000e+00
    8        NA     NA     mu   8   1   8 fullsample        1 FALSE 0.000000e+00
    9        NA     NA     mu   9   1   9 fullsample        1 FALSE 0.000000e+00
    10       NA     NA     mu  10   1  10 fullsample        1 FALSE 0.000000e+00
    11       NA     NA     mu  11   1  11 fullsample        1 FALSE 0.000000e+00
    12       NA     NA     mu  12   1  12 fullsample        1 FALSE 0.000000e+00
    13       NA     NA     mu  13   1  13 fullsample        1 FALSE 0.000000e+00
    14       NA     NA     mu  14   1  14 fullsample        1 FALSE 0.000000e+00
    15       NA     NA     mu  15   1  15 fullsample        1 FALSE 0.000000e+00
    16       NA     NA     mu  16   1  16 fullsample        1 FALSE 0.000000e+00
    17       NA     NA     mu  17   1  17 fullsample        1 FALSE 0.000000e+00
    18       NA     NA     mu  18   1  18 fullsample        1 FALSE 0.000000e+00
    19       NA     NA     mu  19   1  19 fullsample        1 FALSE 0.000000e+00
    20       NA     NA     mu  20   1  20 fullsample        1 FALSE 0.000000e+00
    21       NA     NA     mu  21   1  21 fullsample        1 FALSE 0.000000e+00
    22       NA     NA  omega   2   1  22 fullsample        1 FALSE 0.000000e+00
    23       NA     NA  omega   3   1  23 fullsample        1 FALSE 0.000000e+00
    24       NA     NA  omega   4   1   0 fullsample        1  TRUE 3.675937e-01
    25       NA     NA  omega   5   1   0 fullsample        1  TRUE 8.628062e-01
    26       NA     NA  omega   6   1   0 fullsample        1  TRUE 6.375452e-01
    27       NA     NA  omega   7   1   0 fullsample        1  TRUE 3.635339e+00
    28       NA     NA  omega   8   1  24 fullsample        1 FALSE 0.000000e+00
    29       NA     NA  omega   9   1  25 fullsample        1 FALSE 0.000000e+00
    30       NA     NA  omega  10   1   0 fullsample        1  TRUE 1.606373e-03
    31       NA     NA  omega  11   1   0 fullsample        1  TRUE 2.068231e-01
    32       NA     NA  omega  12   1   0 fullsample        1  TRUE 3.670123e+00
    33       NA     NA  omega  13   1   0 fullsample        1  TRUE 2.920400e-01
    34       NA     NA  omega  14   1   0 fullsample        1  TRUE 7.589467e-01
    35       NA     NA  omega  15   1   0 fullsample        1  TRUE 6.171021e-01
    36       NA     NA  omega  16   1  26 fullsample        1 FALSE 0.000000e+00
    37       NA     NA  omega  17   1  27 fullsample        1 FALSE 0.000000e+00
    38       NA     NA  omega  18   1   0 fullsample        1  TRUE 2.376497e+00
    39       NA     NA  omega  19   1   0 fullsample        1  TRUE 1.838129e+00
    40       NA     NA  omega  20   1  28 fullsample        1 FALSE 0.000000e+00
    41       NA     NA  omega  21   1   0 fullsample        1  TRUE 9.025382e-01
    42       NA     NA  omega   3   2  29 fullsample        1 FALSE 0.000000e+00
    43       NA     NA  omega   4   2   0 fullsample        1  TRUE 3.356655e+00
    44       NA     NA  omega   5   2   0 fullsample        1  TRUE 2.288857e+00
    45       NA     NA  omega   6   2   0 fullsample        1  TRUE 6.729033e-02
    46       NA     NA  omega   7   2   0 fullsample        1  TRUE 1.448761e+00
    47       NA     NA  omega   8   2   0 fullsample        1  TRUE 1.139094e+00
    48       NA     NA  omega   9   2   0 fullsample        1  TRUE 9.156207e-01
    49       NA     NA  omega  10   2   0 fullsample        1  TRUE 5.542220e-01
    50       NA     NA  omega  11   2   0 fullsample        1  TRUE 1.230805e+00
    51       NA     NA  omega  12   2   0 fullsample        1  TRUE 4.835041e-02
    52       NA     NA  omega  13   2   0 fullsample        1  TRUE 1.923586e-02
    53       NA     NA  omega  14   2  30 fullsample        1 FALSE 0.000000e+00
    54       NA     NA  omega  15   2   0 fullsample        1  TRUE 1.362706e-01
    55       NA     NA  omega  16   2   0 fullsample        1  TRUE 3.749667e+00
    56       NA     NA  omega  17   2   0 fullsample        1  TRUE 6.219739e+00
    57       NA     NA  omega  18   2   0 fullsample        1  TRUE 1.691963e+00
    58       NA     NA  omega  19   2  31 fullsample        1 FALSE 0.000000e+00
    59       NA     NA  omega  20   2   0 fullsample        1  TRUE 2.654513e-02
    60       NA     NA  omega  21   2   0 fullsample        1  TRUE 5.838407e-02
    61       NA     NA  omega   4   3   0 fullsample        1  TRUE 1.274813e-01
    62       NA     NA  omega   5   3   0 fullsample        1  TRUE 5.008515e-01
    63       NA     NA  omega   6   3   0 fullsample        1  TRUE 7.632283e-01
    64       NA     NA  omega   7   3   0 fullsample        1  TRUE 4.494697e+00
    65       NA     NA  omega   8   3   0 fullsample        1  TRUE 5.275722e-01
    66       NA     NA  omega   9   3   0 fullsample        1  TRUE 1.498782e+00
    67       NA     NA  omega  10   3   0 fullsample        1  TRUE 6.083463e-01
    68       NA     NA  omega  11   3   0 fullsample        1  TRUE 5.363528e+00
    69       NA     NA  omega  12   3   0 fullsample        1  TRUE 2.442386e+00
    70       NA     NA  omega  13   3   0 fullsample        1  TRUE 5.696888e-02
    71       NA     NA  omega  14   3   0 fullsample        1  TRUE 1.608410e+00
    72       NA     NA  omega  15   3  32 fullsample        1 FALSE 0.000000e+00
    73       NA     NA  omega  16   3   0 fullsample        1  TRUE 3.785791e+00
    74       NA     NA  omega  17   3   0 fullsample        1  TRUE 2.402746e-01
    75       NA     NA  omega  18   3   0 fullsample        1  TRUE 5.808050e-01
    76       NA     NA  omega  19   3   0 fullsample        1  TRUE 9.546453e-01
    77       NA     NA  omega  20   3   0 fullsample        1  TRUE 1.691786e-01
    78       NA     NA  omega  21   3  33 fullsample        1 FALSE 0.000000e+00
    79       NA     NA  omega   5   4  34 fullsample        1 FALSE 0.000000e+00
    80       NA     NA  omega   6   4  35 fullsample        1 FALSE 0.000000e+00
    81       NA     NA  omega   7   4   0 fullsample        1  TRUE 2.436428e-01
    82       NA     NA  omega   8   4   0 fullsample        1  TRUE 1.914077e+00
    83       NA     NA  omega   9   4   0 fullsample        1  TRUE 4.625148e-03
    84       NA     NA  omega  10   4   0 fullsample        1  TRUE 1.256627e+00
    85       NA     NA  omega  11   4   0 fullsample        1  TRUE 1.414012e+00
    86       NA     NA  omega  12   4   0 fullsample        1  TRUE 8.515657e-01
    87       NA     NA  omega  13   4  36 fullsample        1 FALSE 0.000000e+00
    88       NA     NA  omega  14   4   0 fullsample        1  TRUE 4.072319e+00
    89       NA     NA  omega  15   4   0 fullsample        1  TRUE 1.239668e+00
    90       NA     NA  omega  16   4   0 fullsample        1  TRUE 3.052252e-01
    91       NA     NA  omega  17   4   0 fullsample        1  TRUE 9.218787e-01
    92       NA     NA  omega  18   4   0 fullsample        1  TRUE 5.075904e-01
    93       NA     NA  omega  19   4   0 fullsample        1  TRUE 5.318622e-01
    94       NA     NA  omega  20   4   0 fullsample        1  TRUE 1.575093e-01
    95       NA     NA  omega  21   4   0 fullsample        1  TRUE 3.279534e-01
    96       NA     NA  omega   6   5  37 fullsample        1 FALSE 0.000000e+00
    97       NA     NA  omega   7   5   0 fullsample        1  TRUE 1.189989e+00
    98       NA     NA  omega   8   5   0 fullsample        1  TRUE 5.321461e-01
    99       NA     NA  omega   9   5   0 fullsample        1  TRUE 2.871973e+00
    100      NA     NA  omega  10   5   0 fullsample        1  TRUE 9.090495e+00
    101      NA     NA  omega  11   5   0 fullsample        1  TRUE 8.738596e-01
    102      NA     NA  omega  12   5   0 fullsample        1  TRUE 1.439708e+01
    103      NA     NA  omega  13   5   0 fullsample        1  TRUE 1.089262e-01
    104      NA     NA  omega  14   5   0 fullsample        1  TRUE 1.064058e+00
    105      NA     NA  omega  15   5   0 fullsample        1  TRUE 1.012333e-01
    106      NA     NA  omega  16   5   0 fullsample        1  TRUE 5.670755e-01
    107      NA     NA  omega  17   5   0 fullsample        1  TRUE 1.784387e+00
    108      NA     NA  omega  18   5   0 fullsample        1  TRUE 6.301164e+00
    109      NA     NA  omega  19   5   0 fullsample        1  TRUE 7.713308e-01
    110      NA     NA  omega  20   5   0 fullsample        1  TRUE 7.121508e-03
    111      NA     NA  omega  21   5   0 fullsample        1  TRUE 2.841785e-04
    112      NA     NA  omega   7   6   0 fullsample        1  TRUE 1.742472e+00
    113      NA     NA  omega   8   6   0 fullsample        1  TRUE 1.591438e-01
    114      NA     NA  omega   9   6   0 fullsample        1  TRUE 3.689112e-03
    115      NA     NA  omega  10   6   0 fullsample        1  TRUE 6.413575e-01
    116      NA     NA  omega  11   6   0 fullsample        1  TRUE 3.076584e+00
    117      NA     NA  omega  12   6   0 fullsample        1  TRUE 4.574387e+00
    118      NA     NA  omega  13   6   0 fullsample        1  TRUE 3.907600e+00
    119      NA     NA  omega  14   6  38 fullsample        1 FALSE 0.000000e+00
    120      NA     NA  omega  15   6   0 fullsample        1  TRUE 1.606615e+00
    121      NA     NA  omega  16   6   0 fullsample        1  TRUE 1.068479e+01
    122      NA     NA  omega  17   6   0 fullsample        1  TRUE 3.368941e-01
    123      NA     NA  omega  18   6   0 fullsample        1  TRUE 6.002865e+00
    124      NA     NA  omega  19   6   0 fullsample        1  TRUE 3.641594e-01
    125      NA     NA  omega  20   6   0 fullsample        1  TRUE 4.867065e-01
    126      NA     NA  omega  21   6   0 fullsample        1  TRUE 1.541701e-02
    127      NA     NA  omega   8   7  39 fullsample        1 FALSE 0.000000e+00
    128      NA     NA  omega   9   7  40 fullsample        1 FALSE 0.000000e+00
    129      NA     NA  omega  10   7   0 fullsample        1  TRUE 2.653326e-01
    130      NA     NA  omega  11   7   0 fullsample        1  TRUE 6.429045e+00
    131      NA     NA  omega  12   7   0 fullsample        1  TRUE 4.844221e+00
    132      NA     NA  omega  13   7   0 fullsample        1  TRUE 1.928119e+00
    133      NA     NA  omega  14   7  41 fullsample        1 FALSE 0.000000e+00
    134      NA     NA  omega  15   7   0 fullsample        1  TRUE 1.638049e-01
    135      NA     NA  omega  16   7   0 fullsample        1  TRUE 4.310271e-01
    136      NA     NA  omega  17   7   0 fullsample        1  TRUE 3.498791e+00
    137      NA     NA  omega  18   7  42 fullsample        1 FALSE 0.000000e+00
    138      NA     NA  omega  19   7   0 fullsample        1  TRUE 6.944930e-02
    139      NA     NA  omega  20   7   0 fullsample        1  TRUE 5.359789e+00
    140      NA     NA  omega  21   7   0 fullsample        1  TRUE 5.242625e+00
    141      NA     NA  omega   9   8  43 fullsample        1 FALSE 0.000000e+00
    142      NA     NA  omega  10   8   0 fullsample        1  TRUE 1.591268e+00
    143      NA     NA  omega  11   8   0 fullsample        1  TRUE 3.691956e-01
    144      NA     NA  omega  12   8  44 fullsample        1 FALSE 0.000000e+00
    145      NA     NA  omega  13   8   0 fullsample        1  TRUE 2.114404e+00
    146      NA     NA  omega  14   8   0 fullsample        1  TRUE 1.505013e+00
    147      NA     NA  omega  15   8   0 fullsample        1  TRUE 8.294393e-01
    148      NA     NA  omega  16   8   0 fullsample        1  TRUE 9.020509e-01
    149      NA     NA  omega  17   8   0 fullsample        1  TRUE 1.390649e-02
    150      NA     NA  omega  18   8   0 fullsample        1  TRUE 2.661653e+00
    151      NA     NA  omega  19   8   0 fullsample        1  TRUE 1.049136e-01
    152      NA     NA  omega  20   8   0 fullsample        1  TRUE 1.575809e-01
    153      NA     NA  omega  21   8   0 fullsample        1  TRUE 1.172603e+00
    154      NA     NA  omega  10   9   0 fullsample        1  TRUE 4.510931e+00
    155      NA     NA  omega  11   9   0 fullsample        1  TRUE 1.816151e+00
    156      NA     NA  omega  12   9   0 fullsample        1  TRUE 6.765027e+00
    157      NA     NA  omega  13   9   0 fullsample        1  TRUE 3.508205e-02
    158      NA     NA  omega  14   9   0 fullsample        1  TRUE 1.664826e+00
    159      NA     NA  omega  15   9   0 fullsample        1  TRUE 1.274887e-01
    160      NA     NA  omega  16   9   0 fullsample        1  TRUE 9.936111e-02
    161      NA     NA  omega  17   9   0 fullsample        1  TRUE 3.904418e-02
    162      NA     NA  omega  18   9   0 fullsample        1  TRUE 2.181142e-01
    163      NA     NA  omega  19   9   0 fullsample        1  TRUE 2.781189e+00
    164      NA     NA  omega  20   9   0 fullsample        1  TRUE 2.447064e-01
    165      NA     NA  omega  21   9   0 fullsample        1  TRUE 4.330248e+00
    166      NA     NA  omega  11  10   0 fullsample        1  TRUE 1.362479e+00
    167      NA     NA  omega  12  10  45 fullsample        1 FALSE 0.000000e+00
    168      NA     NA  omega  13  10   0 fullsample        1  TRUE 1.629050e-01
    169      NA     NA  omega  14  10   0 fullsample        1  TRUE 7.917903e-01
    170      NA     NA  omega  15  10   0 fullsample        1  TRUE 2.630112e+00
    171      NA     NA  omega  16  10   0 fullsample        1  TRUE 2.596245e+00
    172      NA     NA  omega  17  10  46 fullsample        1 FALSE 0.000000e+00
    173      NA     NA  omega  18  10   0 fullsample        1  TRUE 8.082019e-01
    174      NA     NA  omega  19  10   0 fullsample        1  TRUE 2.698204e-02
    175      NA     NA  omega  20  10  47 fullsample        1 FALSE 0.000000e+00
    176      NA     NA  omega  21  10   0 fullsample        1  TRUE 2.633101e+00
    177      NA     NA  omega  12  11  48 fullsample        1 FALSE 0.000000e+00
    178      NA     NA  omega  13  11  49 fullsample        1 FALSE 0.000000e+00
    179      NA     NA  omega  14  11   0 fullsample        1  TRUE 5.178004e+00
    180      NA     NA  omega  15  11   0 fullsample        1  TRUE 4.373418e-02
    181      NA     NA  omega  16  11   0 fullsample        1  TRUE 1.395825e-01
    182      NA     NA  omega  17  11   0 fullsample        1  TRUE 1.005581e-02
    183      NA     NA  omega  18  11   0 fullsample        1  TRUE 4.892998e-01
    184      NA     NA  omega  19  11  50 fullsample        1 FALSE 0.000000e+00
    185      NA     NA  omega  20  11   0 fullsample        1  TRUE 4.022404e-02
    186      NA     NA  omega  21  11   0 fullsample        1  TRUE 7.621750e-05
    187      NA     NA  omega  13  12   0 fullsample        1  TRUE 7.343012e-01
    188      NA     NA  omega  14  12   0 fullsample        1  TRUE 4.800135e-01
    189      NA     NA  omega  15  12   0 fullsample        1  TRUE 2.112290e-02
    190      NA     NA  omega  16  12  51 fullsample        1 FALSE 0.000000e+00
    191      NA     NA  omega  17  12   0 fullsample        1  TRUE 1.871007e+00
    192      NA     NA  omega  18  12  52 fullsample        1 FALSE 0.000000e+00
    193      NA     NA  omega  19  12   0 fullsample        1  TRUE 4.722591e-01
    194      NA     NA  omega  20  12   0 fullsample        1  TRUE 9.380229e-01
    195      NA     NA  omega  21  12   0 fullsample        1  TRUE 3.297140e-01
    196      NA     NA  omega  14  13  53 fullsample        1 FALSE 0.000000e+00
    197      NA     NA  omega  15  13  54 fullsample        1 FALSE 0.000000e+00
    198      NA     NA  omega  16  13   0 fullsample        1  TRUE 2.256778e-01
    199      NA     NA  omega  17  13  55 fullsample        1 FALSE 0.000000e+00
    200      NA     NA  omega  18  13   0 fullsample        1  TRUE 3.474134e+00
    201      NA     NA  omega  19  13   0 fullsample        1  TRUE 1.618588e-01
    202      NA     NA  omega  20  13   0 fullsample        1  TRUE 3.368046e+00
    203      NA     NA  omega  21  13   0 fullsample        1  TRUE 6.249161e-02
    204      NA     NA  omega  15  14  56 fullsample        1 FALSE 0.000000e+00
    205      NA     NA  omega  16  14  57 fullsample        1 FALSE 0.000000e+00
    206      NA     NA  omega  17  14   0 fullsample        1  TRUE 2.982631e+00
    207      NA     NA  omega  18  14   0 fullsample        1  TRUE 1.869234e+00
    208      NA     NA  omega  19  14  58 fullsample        1 FALSE 0.000000e+00
    209      NA     NA  omega  20  14   0 fullsample        1  TRUE 3.777039e-02
    210      NA     NA  omega  21  14   0 fullsample        1  TRUE 6.496699e-02
    211      NA     NA  omega  16  15   0 fullsample        1  TRUE 3.305936e+00
    212      NA     NA  omega  17  15   0 fullsample        1  TRUE 1.224293e-01
    213      NA     NA  omega  18  15   0 fullsample        1  TRUE 3.657964e-01
    214      NA     NA  omega  19  15   0 fullsample        1  TRUE 1.476355e+00
    215      NA     NA  omega  20  15  59 fullsample        1 FALSE 0.000000e+00
    216      NA     NA  omega  21  15   0 fullsample        1  TRUE 1.053016e-02
    217      NA     NA  omega  17  16  60 fullsample        1 FALSE 0.000000e+00
    218      NA     NA  omega  18  16  61 fullsample        1 FALSE 0.000000e+00
    219      NA     NA  omega  19  16   0 fullsample        1  TRUE 2.167877e+00
    220      NA     NA  omega  20  16   0 fullsample        1  TRUE 3.582653e-02
    221      NA     NA  omega  21  16   0 fullsample        1  TRUE 1.622259e+00
    222      NA     NA  omega  18  17  62 fullsample        1 FALSE 0.000000e+00
    223      NA     NA  omega  19  17   0 fullsample        1  TRUE 1.598381e+00
    224      NA     NA  omega  20  17   0 fullsample        1  TRUE 7.995146e-01
    225      NA     NA  omega  21  17  63 fullsample        1 FALSE 0.000000e+00
    226      NA     NA  omega  19  18   0 fullsample        1  TRUE 7.005860e-05
    227      NA     NA  omega  20  18   0 fullsample        1  TRUE 1.693628e+00
    228      NA     NA  omega  21  18   0 fullsample        1  TRUE 1.396193e+00
    229      NA     NA  omega  20  19  64 fullsample        1 FALSE 0.000000e+00
    230      NA     NA  omega  21  19  65 fullsample        1 FALSE 0.000000e+00
    231      NA     NA  omega  21  20  66 fullsample        1 FALSE 0.000000e+00
    232      NA     NA  delta   1   1  67 fullsample        1 FALSE 0.000000e+00
    233      NA     NA  delta   2   2  68 fullsample        1 FALSE 0.000000e+00
    234      NA     NA  delta   3   3  69 fullsample        1 FALSE 0.000000e+00
    235      NA     NA  delta   4   4  70 fullsample        1 FALSE 0.000000e+00
    236      NA     NA  delta   5   5  71 fullsample        1 FALSE 0.000000e+00
    237      NA     NA  delta   6   6  72 fullsample        1 FALSE 0.000000e+00
    238      NA     NA  delta   7   7  73 fullsample        1 FALSE 0.000000e+00
    239      NA     NA  delta   8   8  74 fullsample        1 FALSE 0.000000e+00
    240      NA     NA  delta   9   9  75 fullsample        1 FALSE 0.000000e+00
    241      NA     NA  delta  10  10  76 fullsample        1 FALSE 0.000000e+00
    242      NA     NA  delta  11  11  77 fullsample        1 FALSE 0.000000e+00
    243      NA     NA  delta  12  12  78 fullsample        1 FALSE 0.000000e+00
    244      NA     NA  delta  13  13  79 fullsample        1 FALSE 0.000000e+00
    245      NA     NA  delta  14  14  80 fullsample        1 FALSE 0.000000e+00
    246      NA     NA  delta  15  15  81 fullsample        1 FALSE 0.000000e+00
    247      NA     NA  delta  16  16  82 fullsample        1 FALSE 0.000000e+00
    248      NA     NA  delta  17  17  83 fullsample        1 FALSE 0.000000e+00
    249      NA     NA  delta  18  18  84 fullsample        1 FALSE 0.000000e+00
    250      NA     NA  delta  19  19  85 fullsample        1 FALSE 0.000000e+00
    251      NA     NA  delta  20  20  86 fullsample        1 FALSE 0.000000e+00
    252      NA     NA  delta  21  21  87 fullsample        1 FALSE 0.000000e+00
                 pmi           epc mi_free pmi_free epc_free mi_equal pmi_equal
    1   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    2   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    3   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    4   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    5   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    6   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    7   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    8   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    9   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    10  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    11  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    12  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    13  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    14  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    15  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    16  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    17  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    18  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    19  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    20  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    21  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    22  0.9999995266 -0.0000000149      NA       NA       NA       NA        NA
    23  0.9999993011  0.0000000248      NA       NA       NA       NA        NA
    24  0.5443188210 -0.0203585967      NA       NA       NA       NA        NA
    25  0.3529546001 -0.0306161221      NA       NA       NA       NA        NA
    26  0.4246011131 -0.0273152679      NA       NA       NA       NA        NA
    27  0.0565650736  0.0715192046      NA       NA       NA       NA        NA
    28  0.9999997017  0.0000000111      NA       NA       NA       NA        NA
    29  0.9999994597 -0.0000000212      NA       NA       NA       NA        NA
    30  0.9680296755  0.0015545353      NA       NA       NA       NA        NA
    31  0.6492689160 -0.0167558958      NA       NA       NA       NA        NA
    32  0.0553960942  0.0671678004      NA       NA       NA       NA        NA
    33  0.5889162270  0.0191870366      NA       NA       NA       NA        NA
    34  0.3836583634  0.0309724071      NA       NA       NA       NA        NA
    35  0.4321262065 -0.0287142246      NA       NA       NA       NA        NA
    36  0.9999990615 -0.0000000275      NA       NA       NA       NA        NA
    37  0.9999995275  0.0000000139      NA       NA       NA       NA        NA
    38  0.1231734946  0.0590415807      NA       NA       NA       NA        NA
    39  0.1751703536 -0.0551350587      NA       NA       NA       NA        NA
    40  0.9999988193  0.0000000314      NA       NA       NA       NA        NA
    41  0.3421020411  0.0386878154      NA       NA       NA       NA        NA
    42  0.9999990967 -0.0000000350      NA       NA       NA       NA        NA
    43  0.0669338916 -0.0666653444      NA       NA       NA       NA        NA
    44  0.1303058659 -0.0541207889      NA       NA       NA       NA        NA
    45  0.7953236954 -0.0098737200      NA       NA       NA       NA        NA
    46  0.2287268681  0.0464296995      NA       NA       NA       NA        NA
    47  0.2858438357 -0.0430413324      NA       NA       NA       NA        NA
    48  0.3386274777 -0.0399544403      NA       NA       NA       NA        NA
    49  0.4565977122 -0.0272259660      NA       NA       NA       NA        NA
    50  0.2672505491 -0.0449245694      NA       NA       NA       NA        NA
    51  0.8259589604  0.0073030256      NA       NA       NA       NA        NA
    52  0.8896924374 -0.0054096897      NA       NA       NA       NA        NA
    53  0.9999993865 -0.0000000186      NA       NA       NA       NA        NA
    54  0.7120170180  0.0150516807      NA       NA       NA       NA        NA
    55  0.0528180330  0.0730432368      NA       NA       NA       NA        NA
    56  0.0126333751  0.0909778992      NA       NA       NA       NA        NA
    57  0.1933424186  0.0427269037      NA       NA       NA       NA        NA
    58  0.9999999206 -0.0000000026      NA       NA       NA       NA        NA
    59  0.8705761070 -0.0064460430      NA       NA       NA       NA        NA
    60  0.8090684523 -0.0094177027      NA       NA       NA       NA        NA
    61  0.7210579911 -0.0138857656      NA       NA       NA       NA        NA
    62  0.4791262252  0.0272322251      NA       NA       NA       NA        NA
    63  0.3823201179  0.0339952121      NA       NA       NA       NA        NA
    64  0.0340001329  0.0815752950      NA       NA       NA       NA        NA
    65  0.4676293563  0.0297488621      NA       NA       NA       NA        NA
    66  0.2208588620  0.0520743590      NA       NA       NA       NA        NA
    67  0.4354111398  0.0301240620      NA       NA       NA       NA        NA
    68  0.0205621329  0.0936624188      NA       NA       NA       NA        NA
    69  0.1180964541  0.0540654585      NA       NA       NA       NA        NA
    70  0.8113525327  0.0098328890      NA       NA       NA       NA        NA
    71  0.2047154094  0.0506180689      NA       NA       NA       NA        NA
    72  0.9999998679 -0.0000000049      NA       NA       NA       NA        NA
    73  0.0516894765  0.0716029500      NA       NA       NA       NA        NA
    74  0.6240078299 -0.0186202321      NA       NA       NA       NA        NA
    75  0.4459969716  0.0259577779      NA       NA       NA       NA        NA
    76  0.3285396842  0.0420622220      NA       NA       NA       NA        NA
    77  0.6808428185  0.0178342012      NA       NA       NA       NA        NA
    78  0.9999993990 -0.0000000207      NA       NA       NA       NA        NA
    79  0.9999996236  0.0000000185      NA       NA       NA       NA        NA
    80  0.9999995474  0.0000000213      NA       NA       NA       NA        NA
    81  0.6215873736 -0.0188324232      NA       NA       NA       NA        NA
    82  0.1665110527 -0.0538879661      NA       NA       NA       NA        NA
    83  0.9457789138  0.0027637374      NA       NA       NA       NA        NA
    84  0.2622905670  0.0416164391      NA       NA       NA       NA        NA
    85  0.2343914468  0.0488912850      NA       NA       NA       NA        NA
    86  0.3561097896  0.0313191327      NA       NA       NA       NA        NA
    87  0.9999995164 -0.0000000211      NA       NA       NA       NA        NA
    88  0.0435913941 -0.0733437431      NA       NA       NA       NA        NA
    89  0.2655350674 -0.0431659373      NA       NA       NA       NA        NA
    90  0.5806250535  0.0184581165      NA       NA       NA       NA        NA
    91  0.3369821590  0.0325700407      NA       NA       NA       NA        NA
    92  0.4761838128  0.0233291584      NA       NA       NA       NA        NA
    93  0.4658249840 -0.0251268839      NA       NA       NA       NA        NA
    94  0.6914600871 -0.0123364329      NA       NA       NA       NA        NA
    95  0.5668667172 -0.0184686192      NA       NA       NA       NA        NA
    96  0.9999997006  0.0000000142      NA       NA       NA       NA        NA
    97  0.2753317247  0.0410993412      NA       NA       NA       NA        NA
    98  0.4657059972 -0.0284337069      NA       NA       NA       NA        NA
    99  0.0901342835  0.0691837270      NA       NA       NA       NA        NA
    100 0.0025694130  0.1113989924      NA       NA       NA       NA        NA
    101 0.3498890084  0.0373435159      NA       NA       NA       NA        NA
    102 0.0001480319  0.1271487161      NA       NA       NA       NA        NA
    103 0.7413699311  0.0125799668      NA       NA       NA       NA        NA
    104 0.3022915348  0.0338997784      NA       NA       NA       NA        NA
    105 0.7503545819 -0.0109558070      NA       NA       NA       NA        NA
    106 0.4514233699  0.0243651788      NA       NA       NA       NA        NA
    107 0.1816115691  0.0431857956      NA       NA       NA       NA        NA
    108 0.0120658698  0.0803841083      NA       NA       NA       NA        NA
    109 0.3798056853 -0.0296324554      NA       NA       NA       NA        NA
    110 0.9327471289 -0.0025618747      NA       NA       NA       NA        NA
    111 0.9865502231 -0.0005344319      NA       NA       NA       NA        NA
    112 0.1868258896  0.0527639448      NA       NA       NA       NA        NA
    113 0.6899460140  0.0154670142      NA       NA       NA       NA        NA
    114 0.9515678169  0.0024445013      NA       NA       NA       NA        NA
    115 0.4232196621  0.0294560842      NA       NA       NA       NA        NA
    116 0.0794271951  0.0698297398      NA       NA       NA       NA        NA
    117 0.0324533562  0.0725460272      NA       NA       NA       NA        NA
    118 0.0480682077 -0.0830957418      NA       NA       NA       NA        NA
    119 0.9999995868 -0.0000000149      NA       NA       NA       NA        NA
    120 0.2049683312 -0.0515230164      NA       NA       NA       NA        NA
    121 0.0010802001  0.1162947874      NA       NA       NA       NA        NA
    122 0.5616275335  0.0195263708      NA       NA       NA       NA        NA
    123 0.0142826667  0.0812451624      NA       NA       NA       NA        NA
    124 0.5462052338 -0.0215032609      NA       NA       NA       NA        NA
    125 0.4854001599  0.0220018822      NA       NA       NA       NA        NA
    126 0.9011844316  0.0040318155      NA       NA       NA       NA        NA
    127 0.9999979479  0.0000000854      NA       NA       NA       NA        NA
    128 0.9999987963 -0.0000000535      NA       NA       NA       NA        NA
    129 0.6064800462  0.0193886931      NA       NA       NA       NA        NA
    130 0.0112268922 -0.0996806372      NA       NA       NA       NA        NA
    131 0.0277389127  0.0848374707      NA       NA       NA       NA        NA
    132 0.1649643854 -0.0563078101      NA       NA       NA       NA        NA
    133 0.9999995299  0.0000000151      NA       NA       NA       NA        NA
    134 0.6856773185  0.0163211658      NA       NA       NA       NA        NA
    135 0.5114854074 -0.0271130026      NA       NA       NA       NA        NA
    136 0.0614136439  0.0746632201      NA       NA       NA       NA        NA
    137 0.9999997538  0.0000000083      NA       NA       NA       NA        NA
    138 0.7921402879 -0.0094855304      NA       NA       NA       NA        NA
    139 0.0206062662  0.0740464450      NA       NA       NA       NA        NA
    140 0.0220399972  0.0750221801      NA       NA       NA       NA        NA
    141 0.9999986956 -0.0000000609      NA       NA       NA       NA        NA
    142 0.2071450698 -0.0540652930      NA       NA       NA       NA        NA
    143 0.5434430700 -0.0258955802      NA       NA       NA       NA        NA
    144 0.9999996647  0.0000000126      NA       NA       NA       NA        NA
    145 0.1459188750  0.0541331158      NA       NA       NA       NA        NA
    146 0.2199016282  0.0435303328      NA       NA       NA       NA        NA
    147 0.3624347109  0.0321595656      NA       NA       NA       NA        NA
    148 0.3422323858 -0.0366576641      NA       NA       NA       NA        NA
    149 0.9061264810  0.0043560430      NA       NA       NA       NA        NA
    150 0.1027938625 -0.0627724866      NA       NA       NA       NA        NA
    151 0.7460109023  0.0116757601      NA       NA       NA       NA        NA
    152 0.6913935717  0.0139766468      NA       NA       NA       NA        NA
    153 0.2788670050  0.0370938406      NA       NA       NA       NA        NA
    154 0.0336789128  0.0831287079      NA       NA       NA       NA        NA
    155 0.1777720983  0.0553524659      NA       NA       NA       NA        NA
    156 0.0092961505  0.0978409521      NA       NA       NA       NA        NA
    157 0.8514238278 -0.0071242034      NA       NA       NA       NA        NA
    158 0.1969529993 -0.0462158387      NA       NA       NA       NA        NA
    159 0.7210502259 -0.0129394827      NA       NA       NA       NA        NA
    160 0.7525976758  0.0116560705      NA       NA       NA       NA        NA
    161 0.8433611679 -0.0072625690      NA       NA       NA       NA        NA
    162 0.6404805400 -0.0171549949      NA       NA       NA       NA        NA
    163 0.0953773561 -0.0615054308      NA       NA       NA       NA        NA
    164 0.6208273688 -0.0178159446      NA       NA       NA       NA        NA
    165 0.0374407973 -0.0730756672      NA       NA       NA       NA        NA
    166 0.2431082527  0.0516587313      NA       NA       NA       NA        NA
    167 0.9999989509 -0.0000000351      NA       NA       NA       NA        NA
    168 0.6864958841  0.0149794923      NA       NA       NA       NA        NA
    169 0.3735593203  0.0292229299      NA       NA       NA       NA        NA
    170 0.1048543097  0.0569853912      NA       NA       NA       NA        NA
    171 0.1071172697  0.0660922230      NA       NA       NA       NA        NA
    172 0.9999987229 -0.0000000434      NA       NA       NA       NA        NA
    173 0.3686523862  0.0376137175      NA       NA       NA       NA        NA
    174 0.8695248148  0.0063258585      NA       NA       NA       NA        NA
    175 0.9999998949  0.0000000033      NA       NA       NA       NA        NA
    176 0.1046571209  0.0653745564      NA       NA       NA       NA        NA
    177 0.9999994633  0.0000000204      NA       NA       NA       NA        NA
    178 0.9999988957  0.0000000467      NA       NA       NA       NA        NA
    179 0.0228745890 -0.0853827663      NA       NA       NA       NA        NA
    180 0.8343489511  0.0082767737      NA       NA       NA       NA        NA
    181 0.7086964425  0.0142867979      NA       NA       NA       NA        NA
    182 0.9201231026  0.0037146205      NA       NA       NA       NA        NA
    183 0.4842398159 -0.0260521062      NA       NA       NA       NA        NA
    184 0.9999981825  0.0000000703      NA       NA       NA       NA        NA
    185 0.8410431779  0.0074648195      NA       NA       NA       NA        NA
    186 0.9930343457  0.0003343845      NA       NA       NA       NA        NA
    187 0.3914925540 -0.0302974469      NA       NA       NA       NA        NA
    188 0.4884161952  0.0224637685      NA       NA       NA       NA        NA
    189 0.8844446440  0.0046074765      NA       NA       NA       NA        NA
    190 0.9999994759  0.0000000154      NA       NA       NA       NA        NA
    191 0.1713598077  0.0565659576      NA       NA       NA       NA        NA
    192 0.9999996095  0.0000000115      NA       NA       NA       NA        NA
    193 0.4919497227  0.0229143536      NA       NA       NA       NA        NA
    194 0.3327868119  0.0312653314      NA       NA       NA       NA        NA
    195 0.5658275713  0.0179605140      NA       NA       NA       NA        NA
    196 0.9999998494 -0.0000000045      NA       NA       NA       NA        NA
    197 0.9999994277 -0.0000000187      NA       NA       NA       NA        NA
    198 0.6347473831 -0.0188041435      NA       NA       NA       NA        NA
    199 0.9999988297 -0.0000000389      NA       NA       NA       NA        NA
    200 0.0623353453 -0.0702304238      NA       NA       NA       NA        NA
    201 0.6874509012  0.0151642217      NA       NA       NA       NA        NA
    202 0.0664725491  0.0632477138      NA       NA       NA       NA        NA
    203 0.8026003224 -0.0085052980      NA       NA       NA       NA        NA
    204 0.9999997993  0.0000000054      NA       NA       NA       NA        NA
    205 0.9999995759 -0.0000000113      NA       NA       NA       NA        NA
    206 0.0841623481  0.0616490542      NA       NA       NA       NA        NA
    207 0.1715628599  0.0474812715      NA       NA       NA       NA        NA
    208 0.9999985656  0.0000000414      NA       NA       NA       NA        NA
    209 0.8459049266  0.0066916090      NA       NA       NA       NA        NA
    210 0.7988109683  0.0083235759      NA       NA       NA       NA        NA
    211 0.0690299966  0.0670721258      NA       NA       NA       NA        NA
    212 0.7264144937 -0.0122613006      NA       NA       NA       NA        NA
    213 0.5453045771 -0.0191248702      NA       NA       NA       NA        NA
    214 0.2243456467  0.0487127097      NA       NA       NA       NA        NA
    215 0.9999992313  0.0000000220      NA       NA       NA       NA        NA
    216 0.9182672830 -0.0038502607      NA       NA       NA       NA        NA
    217 0.9999995046  0.0000000135      NA       NA       NA       NA        NA
    218 0.9999993458 -0.0000000174      NA       NA       NA       NA        NA
    219 0.1409206701  0.0505570799      NA       NA       NA       NA        NA
    220 0.8498741832  0.0061913633      NA       NA       NA       NA        NA
    221 0.2027770807  0.0433269711      NA       NA       NA       NA        NA
    222 0.9999990741  0.0000000245      NA       NA       NA       NA        NA
    223 0.2061328024 -0.0452887102      NA       NA       NA       NA        NA
    224 0.3712385322  0.0333059680      NA       NA       NA       NA        NA
    225 0.9999997988 -0.0000000057      NA       NA       NA       NA        NA
    226 0.9933217020 -0.0002629884      NA       NA       NA       NA        NA
    227 0.1931234237  0.0386628446      NA       NA       NA       NA        NA
    228 0.2373620323  0.0397436336      NA       NA       NA       NA        NA
    229 0.9999999749  0.0000000007      NA       NA       NA       NA        NA
    230 0.9999993338 -0.0000000188      NA       NA       NA       NA        NA
    231 0.9999991178 -0.0000000214      NA       NA       NA       NA        NA
    232 0.9999997666  0.0000000109      NA       NA       NA       NA        NA
    233 0.9999983940 -0.0000000850      NA       NA       NA       NA        NA
    234 0.9999999216 -0.0000000048      NA       NA       NA       NA        NA
    235 0.9999997902  0.0000000140      NA       NA       NA       NA        NA
    236 0.9999999393  0.0000000046      NA       NA       NA       NA        NA
    237 0.9999999198  0.0000000054      NA       NA       NA       NA        NA
    238 0.9999993623  0.0000000401      NA       NA       NA       NA        NA
    239 0.9999998824 -0.0000000077      NA       NA       NA       NA        NA
    240 0.9999999742 -0.0000000018      NA       NA       NA       NA        NA
    241 0.9999997635 -0.0000000144      NA       NA       NA       NA        NA
    242 0.9999993413  0.0000000445      NA       NA       NA       NA        NA
    243 0.9999992354  0.0000000409      NA       NA       NA       NA        NA
    244 0.9999999484 -0.0000000022      NA       NA       NA       NA        NA
    245 0.9999988212  0.0000000445      NA       NA       NA       NA        NA
    246 0.9999991702 -0.0000000307      NA       NA       NA       NA        NA
    247 0.9999995353 -0.0000000235      NA       NA       NA       NA        NA
    248 0.9999974646  0.0000001301      NA       NA       NA       NA        NA
    249 0.9999995539 -0.0000000227      NA       NA       NA       NA        NA
    250 0.9999998253  0.0000000078      NA       NA       NA       NA        NA
    251 0.9999996940 -0.0000000115      NA       NA       NA       NA        NA
    252 0.9999988368 -0.0000000484      NA       NA       NA       NA        NA
        epc_equal minimum maximum identified
    1          NA    -Inf     Inf      FALSE
    2          NA    -Inf     Inf      FALSE
    3          NA    -Inf     Inf      FALSE
    4          NA    -Inf     Inf      FALSE
    5          NA    -Inf     Inf      FALSE
    6          NA    -Inf     Inf      FALSE
    7          NA    -Inf     Inf      FALSE
    8          NA    -Inf     Inf      FALSE
    9          NA    -Inf     Inf      FALSE
    10         NA    -Inf     Inf      FALSE
    11         NA    -Inf     Inf      FALSE
    12         NA    -Inf     Inf      FALSE
    13         NA    -Inf     Inf      FALSE
    14         NA    -Inf     Inf      FALSE
    15         NA    -Inf     Inf      FALSE
    16         NA    -Inf     Inf      FALSE
    17         NA    -Inf     Inf      FALSE
    18         NA    -Inf     Inf      FALSE
    19         NA    -Inf     Inf      FALSE
    20         NA    -Inf     Inf      FALSE
    21         NA    -Inf     Inf      FALSE
    22         NA      -1       1      FALSE
    23         NA      -1       1      FALSE
    24         NA      -1       1      FALSE
    25         NA      -1       1      FALSE
    26         NA      -1       1      FALSE
    27         NA      -1       1      FALSE
    28         NA      -1       1      FALSE
    29         NA      -1       1      FALSE
    30         NA      -1       1      FALSE
    31         NA      -1       1      FALSE
    32         NA      -1       1      FALSE
    33         NA      -1       1      FALSE
    34         NA      -1       1      FALSE
    35         NA      -1       1      FALSE
    36         NA      -1       1      FALSE
    37         NA      -1       1      FALSE
    38         NA      -1       1      FALSE
    39         NA      -1       1      FALSE
    40         NA      -1       1      FALSE
    41         NA      -1       1      FALSE
    42         NA      -1       1      FALSE
    43         NA      -1       1      FALSE
    44         NA      -1       1      FALSE
    45         NA      -1       1      FALSE
    46         NA      -1       1      FALSE
    47         NA      -1       1      FALSE
    48         NA      -1       1      FALSE
    49         NA      -1       1      FALSE
    50         NA      -1       1      FALSE
    51         NA      -1       1      FALSE
    52         NA      -1       1      FALSE
    53         NA      -1       1      FALSE
    54         NA      -1       1      FALSE
    55         NA      -1       1      FALSE
    56         NA      -1       1      FALSE
    57         NA      -1       1      FALSE
    58         NA      -1       1      FALSE
    59         NA      -1       1      FALSE
    60         NA      -1       1      FALSE
    61         NA      -1       1      FALSE
    62         NA      -1       1      FALSE
    63         NA      -1       1      FALSE
    64         NA      -1       1      FALSE
    65         NA      -1       1      FALSE
    66         NA      -1       1      FALSE
    67         NA      -1       1      FALSE
    68         NA      -1       1      FALSE
    69         NA      -1       1      FALSE
    70         NA      -1       1      FALSE
    71         NA      -1       1      FALSE
    72         NA      -1       1      FALSE
    73         NA      -1       1      FALSE
    74         NA      -1       1      FALSE
    75         NA      -1       1      FALSE
    76         NA      -1       1      FALSE
    77         NA      -1       1      FALSE
    78         NA      -1       1      FALSE
    79         NA      -1       1      FALSE
    80         NA      -1       1      FALSE
    81         NA      -1       1      FALSE
    82         NA      -1       1      FALSE
    83         NA      -1       1      FALSE
    84         NA      -1       1      FALSE
    85         NA      -1       1      FALSE
    86         NA      -1       1      FALSE
    87         NA      -1       1      FALSE
    88         NA      -1       1      FALSE
    89         NA      -1       1      FALSE
    90         NA      -1       1      FALSE
    91         NA      -1       1      FALSE
    92         NA      -1       1      FALSE
    93         NA      -1       1      FALSE
    94         NA      -1       1      FALSE
    95         NA      -1       1      FALSE
    96         NA      -1       1      FALSE
    97         NA      -1       1      FALSE
    98         NA      -1       1      FALSE
    99         NA      -1       1      FALSE
    100        NA      -1       1      FALSE
    101        NA      -1       1      FALSE
    102        NA      -1       1      FALSE
    103        NA      -1       1      FALSE
    104        NA      -1       1      FALSE
    105        NA      -1       1      FALSE
    106        NA      -1       1      FALSE
    107        NA      -1       1      FALSE
    108        NA      -1       1      FALSE
    109        NA      -1       1      FALSE
    110        NA      -1       1      FALSE
    111        NA      -1       1      FALSE
    112        NA      -1       1      FALSE
    113        NA      -1       1      FALSE
    114        NA      -1       1      FALSE
    115        NA      -1       1      FALSE
    116        NA      -1       1      FALSE
    117        NA      -1       1      FALSE
    118        NA      -1       1      FALSE
    119        NA      -1       1      FALSE
    120        NA      -1       1      FALSE
    121        NA      -1       1      FALSE
    122        NA      -1       1      FALSE
    123        NA      -1       1      FALSE
    124        NA      -1       1      FALSE
    125        NA      -1       1      FALSE
    126        NA      -1       1      FALSE
    127        NA      -1       1      FALSE
    128        NA      -1       1      FALSE
    129        NA      -1       1      FALSE
    130        NA      -1       1      FALSE
    131        NA      -1       1      FALSE
    132        NA      -1       1      FALSE
    133        NA      -1       1      FALSE
    134        NA      -1       1      FALSE
    135        NA      -1       1      FALSE
    136        NA      -1       1      FALSE
    137        NA      -1       1      FALSE
    138        NA      -1       1      FALSE
    139        NA      -1       1      FALSE
    140        NA      -1       1      FALSE
    141        NA      -1       1      FALSE
    142        NA      -1       1      FALSE
    143        NA      -1       1      FALSE
    144        NA      -1       1      FALSE
    145        NA      -1       1      FALSE
    146        NA      -1       1      FALSE
    147        NA      -1       1      FALSE
    148        NA      -1       1      FALSE
    149        NA      -1       1      FALSE
    150        NA      -1       1      FALSE
    151        NA      -1       1      FALSE
    152        NA      -1       1      FALSE
    153        NA      -1       1      FALSE
    154        NA      -1       1      FALSE
    155        NA      -1       1      FALSE
    156        NA      -1       1      FALSE
    157        NA      -1       1      FALSE
    158        NA      -1       1      FALSE
    159        NA      -1       1      FALSE
    160        NA      -1       1      FALSE
    161        NA      -1       1      FALSE
    162        NA      -1       1      FALSE
    163        NA      -1       1      FALSE
    164        NA      -1       1      FALSE
    165        NA      -1       1      FALSE
    166        NA      -1       1      FALSE
    167        NA      -1       1      FALSE
    168        NA      -1       1      FALSE
    169        NA      -1       1      FALSE
    170        NA      -1       1      FALSE
    171        NA      -1       1      FALSE
    172        NA      -1       1      FALSE
    173        NA      -1       1      FALSE
    174        NA      -1       1      FALSE
    175        NA      -1       1      FALSE
    176        NA      -1       1      FALSE
    177        NA      -1       1      FALSE
    178        NA      -1       1      FALSE
    179        NA      -1       1      FALSE
    180        NA      -1       1      FALSE
    181        NA      -1       1      FALSE
    182        NA      -1       1      FALSE
    183        NA      -1       1      FALSE
    184        NA      -1       1      FALSE
    185        NA      -1       1      FALSE
    186        NA      -1       1      FALSE
    187        NA      -1       1      FALSE
    188        NA      -1       1      FALSE
    189        NA      -1       1      FALSE
    190        NA      -1       1      FALSE
    191        NA      -1       1      FALSE
    192        NA      -1       1      FALSE
    193        NA      -1       1      FALSE
    194        NA      -1       1      FALSE
    195        NA      -1       1      FALSE
    196        NA      -1       1      FALSE
    197        NA      -1       1      FALSE
    198        NA      -1       1      FALSE
    199        NA      -1       1      FALSE
    200        NA      -1       1      FALSE
    201        NA      -1       1      FALSE
    202        NA      -1       1      FALSE
    203        NA      -1       1      FALSE
    204        NA      -1       1      FALSE
    205        NA      -1       1      FALSE
    206        NA      -1       1      FALSE
    207        NA      -1       1      FALSE
    208        NA      -1       1      FALSE
    209        NA      -1       1      FALSE
    210        NA      -1       1      FALSE
    211        NA      -1       1      FALSE
    212        NA      -1       1      FALSE
    213        NA      -1       1      FALSE
    214        NA      -1       1      FALSE
    215        NA      -1       1      FALSE
    216        NA      -1       1      FALSE
    217        NA      -1       1      FALSE
    218        NA      -1       1      FALSE
    219        NA      -1       1      FALSE
    220        NA      -1       1      FALSE
    221        NA      -1       1      FALSE
    222        NA      -1       1      FALSE
    223        NA      -1       1      FALSE
    224        NA      -1       1      FALSE
    225        NA      -1       1      FALSE
    226        NA      -1       1      FALSE
    227        NA      -1       1      FALSE
    228        NA      -1       1      FALSE
    229        NA      -1       1      FALSE
    230        NA      -1       1      FALSE
    231        NA      -1       1      FALSE
    232        NA       0     Inf      FALSE
    233        NA       0     Inf      FALSE
    234        NA       0     Inf      FALSE
    235        NA       0     Inf      FALSE
    236        NA       0     Inf      FALSE
    237        NA       0     Inf      FALSE
    238        NA       0     Inf      FALSE
    239        NA       0     Inf      FALSE
    240        NA       0     Inf      FALSE
    241        NA       0     Inf      FALSE
    242        NA       0     Inf      FALSE
    243        NA       0     Inf      FALSE
    244        NA       0     Inf      FALSE
    245        NA       0     Inf      FALSE
    246        NA       0     Inf      FALSE
    247        NA       0     Inf      FALSE
    248        NA       0     Inf      FALSE
    249        NA       0     Inf      FALSE
    250        NA       0     Inf      FALSE
    251        NA       0     Inf      FALSE
    252        NA       0     Inf      FALSE

``` r
knitr::include_graphics("./figures/balezina_irma-reduced-network_train.png")
```

<img src="./figures/balezina_irma-reduced-network_train.png"
width="14400" />

## Test Network

``` r
network_reduced_fit_ind_1_test %>% 
  knitr::kable()
```

|                   | Measure           |         Value |
|:------------------|:------------------|--------------:|
| logl              | logl              | -1.807315e+04 |
| unrestricted.logl | unrestricted.logl | -1.790601e+04 |
| baseline.logl     | baseline.logl     | -1.922561e+04 |
| nvar              | nvar              |  2.100000e+01 |
| nobs              | nobs              |  2.520000e+02 |
| npar              | npar              |  8.700000e+01 |
| df                | df                |  1.650000e+02 |
| objective         | objective         |  4.049935e+01 |
| chisq             | chisq             |  3.342948e+02 |
| pvalue            | pvalue            |  0.000000e+00 |
| baseline.chisq    | baseline.chisq    |  2.639213e+03 |
| baseline.df       | baseline.df       |  2.100000e+02 |
| baseline.pvalue   | baseline.pvalue   |  0.000000e+00 |
| nfi               | nfi               |  8.733354e-01 |
| pnfi              | pnfi              |  6.861921e-01 |
| tli               | tli               |  9.113021e-01 |
| nnfi              | nnfi              |  9.113021e-01 |
| rfi               | rfi               |  8.387906e-01 |
| ifi               | ifi               |  9.315763e-01 |
| rni               | rni               |  9.303088e-01 |
| cfi               | cfi               |  9.303088e-01 |
| rmsea             | rmsea             |  4.738290e-02 |
| rmsea.ci.lower    | rmsea.ci.lower    |  4.004870e-02 |
| rmsea.ci.upper    | rmsea.ci.upper    |  5.467700e-02 |
| rmsea.pvalue      | rmsea.pvalue      |  7.141862e-01 |
| aic.ll            | aic.ll            |  3.632031e+04 |
| aic.ll2           | aic.ll2           |  3.636180e+04 |
| aic.x             | aic.x             |  4.294793e+00 |
| aic.x2            | aic.x2            |  5.082948e+02 |
| bic               | bic               |  3.667915e+04 |
| bic2              | bic2              |  3.640304e+04 |
| ebic.25           | ebic.25           |  3.694403e+04 |
| ebic.5            | ebic.5            |  3.720890e+04 |
| ebic.75           | ebic.75           |  3.742080e+04 |
| ebic1             | ebic1             |  3.773865e+04 |

``` r
network_reduced_pars_1_test
```

        var1 var1_id  op var2 var2_id         est std         se             p
    1   li_2       1  ~1 <NA>      NA  3.79212254  NA 0.08444515  0.000000e+00
    2   li_3       2  ~1 <NA>      NA  3.09409190  NA 0.08225260  0.000000e+00
    3   li_4       3  ~1 <NA>      NA  2.96717724  NA 0.08459283 1.566389e-269
    4   fi_3       4  ~1 <NA>      NA  5.38293217  NA 0.08659203  0.000000e+00
    5   fi_4       5  ~1 <NA>      NA  4.97374179  NA 0.08925229  0.000000e+00
    6   fi_5       6  ~1 <NA>      NA  5.72428884  NA 0.08061496  0.000000e+00
    7   de_1       7  ~1 <NA>      NA  3.34354486  NA 0.08826461  0.000000e+00
    8   de_2       8  ~1 <NA>      NA  2.73741794  NA 0.08792282 8.267225e-213
    9   de_5       9  ~1 <NA>      NA  4.15536105  NA 0.09122316  0.000000e+00
    10  mt_2      10  ~1 <NA>      NA  3.27789934  NA 0.08978799 8.554691e-292
    11  mt_3      11  ~1 <NA>      NA  2.58643326  NA 0.08594963 6.086584e-199
    12  mt_4      12  ~1 <NA>      NA  3.69803063  NA 0.09392217  0.000000e+00
    13  nr_3      13  ~1 <NA>      NA  1.74835886  NA 0.06273897 6.667990e-171
    14  nr_4      14  ~1 <NA>      NA  2.27789934  NA 0.07534847 9.126451e-201
    15  te_4      15  ~1 <NA>      NA  1.84463895  NA 0.06779746 5.211397e-163
    16  sa_1      16  ~1 <NA>      NA  3.48796499  NA 0.09391892 6.836729e-302
    17  sa_4      17  ~1 <NA>      NA  3.68490153  NA 0.09669297  0.000000e+00
    18  sa_7      18  ~1 <NA>      NA  3.98468271  NA 0.09694677  0.000000e+00
    19  wi_1      19  ~1 <NA>      NA  2.27133479  NA 0.07694091 1.570684e-191
    20  wi_4      20  ~1 <NA>      NA  3.14879650  NA 0.07567111  0.000000e+00
    21  wi_5      21  ~1 <NA>      NA  2.87527352  NA 0.08146098 6.685402e-273
    22  li_3       2  -- li_2       1  0.29976314  NA 0.03749715  1.303213e-15
    23  li_4       3  -- li_2       1  0.08068042  NA 0.04148731  5.181094e-02
    24  fi_3       4  -- li_2       1  0.00000000  NA         NA            NA
    25  fi_4       5  -- li_2       1  0.00000000  NA         NA            NA
    26  fi_5       6  -- li_2       1  0.00000000  NA         NA            NA
    27  de_1       7  -- li_2       1  0.00000000  NA         NA            NA
    28  de_2       8  -- li_2       1  0.02140986  NA 0.03697245  5.625378e-01
    29  de_5       9  -- li_2       1  0.10135540  NA 0.03664759  5.680477e-03
    30  mt_2      10  -- li_2       1  0.00000000  NA         NA            NA
    31  mt_3      11  -- li_2       1  0.00000000  NA         NA            NA
    32  mt_4      12  -- li_2       1  0.00000000  NA         NA            NA
    33  nr_3      13  -- li_2       1  0.00000000  NA         NA            NA
    34  nr_4      14  -- li_2       1  0.00000000  NA         NA            NA
    35  te_4      15  -- li_2       1  0.00000000  NA         NA            NA
    36  sa_1      16  -- li_2       1  0.22812017  NA 0.03625987  3.149057e-10
    37  sa_4      17  -- li_2       1  0.10025457  NA 0.03816799  8.622587e-03
    38  sa_7      18  -- li_2       1  0.00000000  NA         NA            NA
    39  wi_1      19  -- li_2       1  0.00000000  NA         NA            NA
    40  wi_4      20  -- li_2       1  0.18134885  NA 0.03379481  8.042423e-08
    41  wi_5      21  -- li_2       1  0.00000000  NA         NA            NA
    42  li_4       3  -- li_3       2  0.19590084  NA 0.04257285  4.193710e-06
    43  fi_3       4  -- li_3       2  0.00000000  NA         NA            NA
    44  fi_4       5  -- li_3       2  0.00000000  NA         NA            NA
    45  fi_5       6  -- li_3       2  0.00000000  NA         NA            NA
    46  de_1       7  -- li_3       2  0.00000000  NA         NA            NA
    47  de_2       8  -- li_3       2  0.00000000  NA         NA            NA
    48  de_5       9  -- li_3       2  0.00000000  NA         NA            NA
    49  mt_2      10  -- li_3       2  0.00000000  NA         NA            NA
    50  mt_3      11  -- li_3       2  0.00000000  NA         NA            NA
    51  mt_4      12  -- li_3       2  0.00000000  NA         NA            NA
    52  nr_3      13  -- li_3       2  0.00000000  NA         NA            NA
    53  nr_4      14  -- li_3       2  0.09613224  NA 0.03522494  6.350825e-03
    54  te_4      15  -- li_3       2  0.00000000  NA         NA            NA
    55  sa_1      16  -- li_3       2  0.00000000  NA         NA            NA
    56  sa_4      17  -- li_3       2  0.00000000  NA         NA            NA
    57  sa_7      18  -- li_3       2  0.00000000  NA         NA            NA
    58  wi_1      19  -- li_3       2  0.23128479  NA 0.03647351  2.280247e-10
    59  wi_4      20  -- li_3       2  0.00000000  NA         NA            NA
    60  wi_5      21  -- li_3       2  0.00000000  NA         NA            NA
    61  fi_3       4  -- li_4       3  0.00000000  NA         NA            NA
    62  fi_4       5  -- li_4       3  0.00000000  NA         NA            NA
    63  fi_5       6  -- li_4       3  0.00000000  NA         NA            NA
    64  de_1       7  -- li_4       3  0.00000000  NA         NA            NA
    65  de_2       8  -- li_4       3  0.00000000  NA         NA            NA
    66  de_5       9  -- li_4       3  0.00000000  NA         NA            NA
    67  mt_2      10  -- li_4       3  0.00000000  NA         NA            NA
    68  mt_3      11  -- li_4       3  0.00000000  NA         NA            NA
    69  mt_4      12  -- li_4       3  0.00000000  NA         NA            NA
    70  nr_3      13  -- li_4       3  0.00000000  NA         NA            NA
    71  nr_4      14  -- li_4       3  0.00000000  NA         NA            NA
    72  te_4      15  -- li_4       3  0.13187841  NA 0.03741228  4.234775e-04
    73  sa_1      16  -- li_4       3  0.00000000  NA         NA            NA
    74  sa_4      17  -- li_4       3  0.00000000  NA         NA            NA
    75  sa_7      18  -- li_4       3  0.00000000  NA         NA            NA
    76  wi_1      19  -- li_4       3  0.00000000  NA         NA            NA
    77  wi_4      20  -- li_4       3  0.00000000  NA         NA            NA
    78  wi_5      21  -- li_4       3  0.10446467  NA 0.03766140  5.540817e-03
    79  fi_4       5  -- fi_3       4  0.11630109  NA 0.04597239  1.141267e-02
    80  fi_5       6  -- fi_3       4  0.21698725  NA 0.04407472  8.515412e-07
    81  de_1       7  -- fi_3       4  0.00000000  NA         NA            NA
    82  de_2       8  -- fi_3       4  0.00000000  NA         NA            NA
    83  de_5       9  -- fi_3       4  0.00000000  NA         NA            NA
    84  mt_2      10  -- fi_3       4  0.00000000  NA         NA            NA
    85  mt_3      11  -- fi_3       4  0.00000000  NA         NA            NA
    86  mt_4      12  -- fi_3       4  0.00000000  NA         NA            NA
    87  nr_3      13  -- fi_3       4 -0.07246928  NA 0.03777344  5.504448e-02
    88  nr_4      14  -- fi_3       4  0.00000000  NA         NA            NA
    89  te_4      15  -- fi_3       4  0.00000000  NA         NA            NA
    90  sa_1      16  -- fi_3       4  0.00000000  NA         NA            NA
    91  sa_4      17  -- fi_3       4  0.00000000  NA         NA            NA
    92  sa_7      18  -- fi_3       4  0.00000000  NA         NA            NA
    93  wi_1      19  -- fi_3       4  0.00000000  NA         NA            NA
    94  wi_4      20  -- fi_3       4  0.00000000  NA         NA            NA
    95  wi_5      21  -- fi_3       4  0.00000000  NA         NA            NA
    96  fi_5       6  -- fi_4       5  0.23029430  NA 0.04380562  1.462757e-07
    97  de_1       7  -- fi_4       5  0.00000000  NA         NA            NA
    98  de_2       8  -- fi_4       5  0.00000000  NA         NA            NA
    99  de_5       9  -- fi_4       5  0.00000000  NA         NA            NA
    100 mt_2      10  -- fi_4       5  0.00000000  NA         NA            NA
    101 mt_3      11  -- fi_4       5  0.00000000  NA         NA            NA
    102 mt_4      12  -- fi_4       5  0.00000000  NA         NA            NA
    103 nr_3      13  -- fi_4       5  0.00000000  NA         NA            NA
    104 nr_4      14  -- fi_4       5  0.00000000  NA         NA            NA
    105 te_4      15  -- fi_4       5  0.00000000  NA         NA            NA
    106 sa_1      16  -- fi_4       5  0.00000000  NA         NA            NA
    107 sa_4      17  -- fi_4       5  0.00000000  NA         NA            NA
    108 sa_7      18  -- fi_4       5  0.00000000  NA         NA            NA
    109 wi_1      19  -- fi_4       5  0.00000000  NA         NA            NA
    110 wi_4      20  -- fi_4       5  0.00000000  NA         NA            NA
    111 wi_5      21  -- fi_4       5  0.00000000  NA         NA            NA
    112 de_1       7  -- fi_5       6  0.00000000  NA         NA            NA
    113 de_2       8  -- fi_5       6  0.00000000  NA         NA            NA
    114 de_5       9  -- fi_5       6  0.00000000  NA         NA            NA
    115 mt_2      10  -- fi_5       6  0.00000000  NA         NA            NA
    116 mt_3      11  -- fi_5       6  0.00000000  NA         NA            NA
    117 mt_4      12  -- fi_5       6  0.00000000  NA         NA            NA
    118 nr_3      13  -- fi_5       6  0.00000000  NA         NA            NA
    119 nr_4      14  -- fi_5       6 -0.10984582  NA 0.03248400  7.208164e-04
    120 te_4      15  -- fi_5       6  0.00000000  NA         NA            NA
    121 sa_1      16  -- fi_5       6  0.00000000  NA         NA            NA
    122 sa_4      17  -- fi_5       6  0.00000000  NA         NA            NA
    123 sa_7      18  -- fi_5       6  0.00000000  NA         NA            NA
    124 wi_1      19  -- fi_5       6  0.00000000  NA         NA            NA
    125 wi_4      20  -- fi_5       6  0.00000000  NA         NA            NA
    126 wi_5      21  -- fi_5       6  0.00000000  NA         NA            NA
    127 de_2       8  -- de_1       7  0.17515133  NA 0.04200330  3.046773e-05
    128 de_5       9  -- de_1       7  0.10621569  NA 0.04274922  1.296887e-02
    129 mt_2      10  -- de_1       7  0.00000000  NA         NA            NA
    130 mt_3      11  -- de_1       7  0.00000000  NA         NA            NA
    131 mt_4      12  -- de_1       7  0.00000000  NA         NA            NA
    132 nr_3      13  -- de_1       7  0.00000000  NA         NA            NA
    133 nr_4      14  -- de_1       7  0.19749821  NA 0.03433783  8.839159e-09
    134 te_4      15  -- de_1       7  0.00000000  NA         NA            NA
    135 sa_1      16  -- de_1       7  0.00000000  NA         NA            NA
    136 sa_4      17  -- de_1       7  0.00000000  NA         NA            NA
    137 sa_7      18  -- de_1       7  0.20248839  NA 0.03552986  1.204382e-08
    138 wi_1      19  -- de_1       7  0.00000000  NA         NA            NA
    139 wi_4      20  -- de_1       7  0.00000000  NA         NA            NA
    140 wi_5      21  -- de_1       7  0.00000000  NA         NA            NA
    141 de_5       9  -- de_2       8  0.16971555  NA 0.04499887  1.622355e-04
    142 mt_2      10  -- de_2       8  0.00000000  NA         NA            NA
    143 mt_3      11  -- de_2       8  0.00000000  NA         NA            NA
    144 mt_4      12  -- de_2       8  0.11421657  NA 0.03824763  2.824313e-03
    145 nr_3      13  -- de_2       8  0.00000000  NA         NA            NA
    146 nr_4      14  -- de_2       8  0.00000000  NA         NA            NA
    147 te_4      15  -- de_2       8  0.00000000  NA         NA            NA
    148 sa_1      16  -- de_2       8  0.00000000  NA         NA            NA
    149 sa_4      17  -- de_2       8  0.00000000  NA         NA            NA
    150 sa_7      18  -- de_2       8  0.00000000  NA         NA            NA
    151 wi_1      19  -- de_2       8  0.00000000  NA         NA            NA
    152 wi_4      20  -- de_2       8  0.00000000  NA         NA            NA
    153 wi_5      21  -- de_2       8  0.00000000  NA         NA            NA
    154 mt_2      10  -- de_5       9  0.00000000  NA         NA            NA
    155 mt_3      11  -- de_5       9  0.00000000  NA         NA            NA
    156 mt_4      12  -- de_5       9  0.00000000  NA         NA            NA
    157 nr_3      13  -- de_5       9  0.00000000  NA         NA            NA
    158 nr_4      14  -- de_5       9  0.00000000  NA         NA            NA
    159 te_4      15  -- de_5       9  0.00000000  NA         NA            NA
    160 sa_1      16  -- de_5       9  0.00000000  NA         NA            NA
    161 sa_4      17  -- de_5       9  0.00000000  NA         NA            NA
    162 sa_7      18  -- de_5       9  0.00000000  NA         NA            NA
    163 wi_1      19  -- de_5       9  0.00000000  NA         NA            NA
    164 wi_4      20  -- de_5       9  0.00000000  NA         NA            NA
    165 wi_5      21  -- de_5       9  0.00000000  NA         NA            NA
    166 mt_3      11  -- mt_2      10  0.00000000  NA         NA            NA
    167 mt_4      12  -- mt_2      10  0.31209522  NA 0.03724919  5.357118e-17
    168 nr_3      13  -- mt_2      10  0.00000000  NA         NA            NA
    169 nr_4      14  -- mt_2      10  0.00000000  NA         NA            NA
    170 te_4      15  -- mt_2      10  0.00000000  NA         NA            NA
    171 sa_1      16  -- mt_2      10  0.00000000  NA         NA            NA
    172 sa_4      17  -- mt_2      10  0.04693621  NA 0.03532320  1.839257e-01
    173 sa_7      18  -- mt_2      10  0.00000000  NA         NA            NA
    174 wi_1      19  -- mt_2      10  0.00000000  NA         NA            NA
    175 wi_4      20  -- mt_2      10  0.24355115  NA 0.03401478  8.058534e-13
    176 wi_5      21  -- mt_2      10  0.00000000  NA         NA            NA
    177 mt_4      12  -- mt_3      11  0.28787633  NA 0.03787677  2.953552e-14
    178 nr_3      13  -- mt_3      11  0.13414039  NA 0.03810371  4.308931e-04
    179 nr_4      14  -- mt_3      11  0.00000000  NA         NA            NA
    180 te_4      15  -- mt_3      11  0.00000000  NA         NA            NA
    181 sa_1      16  -- mt_3      11  0.00000000  NA         NA            NA
    182 sa_4      17  -- mt_3      11  0.00000000  NA         NA            NA
    183 sa_7      18  -- mt_3      11  0.00000000  NA         NA            NA
    184 wi_1      19  -- mt_3      11  0.07445748  NA 0.03469767  3.188154e-02
    185 wi_4      20  -- mt_3      11  0.00000000  NA         NA            NA
    186 wi_5      21  -- mt_3      11  0.00000000  NA         NA            NA
    187 nr_3      13  -- mt_4      12  0.00000000  NA         NA            NA
    188 nr_4      14  -- mt_4      12  0.00000000  NA         NA            NA
    189 te_4      15  -- mt_4      12  0.00000000  NA         NA            NA
    190 sa_1      16  -- mt_4      12  0.16919424  NA 0.03673066  4.097997e-06
    191 sa_4      17  -- mt_4      12  0.00000000  NA         NA            NA
    192 sa_7      18  -- mt_4      12  0.07057997  NA 0.03792081  6.270942e-02
    193 wi_1      19  -- mt_4      12  0.00000000  NA         NA            NA
    194 wi_4      20  -- mt_4      12  0.00000000  NA         NA            NA
    195 wi_5      21  -- mt_4      12  0.00000000  NA         NA            NA
    196 nr_4      14  -- nr_3      13  0.20785627  NA 0.04025493  2.423761e-07
    197 te_4      15  -- nr_3      13  0.26799484  NA 0.04137536  9.346513e-11
    198 sa_1      16  -- nr_3      13  0.00000000  NA         NA            NA
    199 sa_4      17  -- nr_3      13  0.10850289  NA 0.03411514  1.470259e-03
    200 sa_7      18  -- nr_3      13  0.00000000  NA         NA            NA
    201 wi_1      19  -- nr_3      13  0.00000000  NA         NA            NA
    202 wi_4      20  -- nr_3      13  0.00000000  NA         NA            NA
    203 wi_5      21  -- nr_3      13  0.00000000  NA         NA            NA
    204 te_4      15  -- nr_4      14  0.33887117  NA 0.03715739  7.520413e-20
    205 sa_1      16  -- nr_4      14  0.16399715  NA 0.03169777  2.294094e-07
    206 sa_4      17  -- nr_4      14  0.00000000  NA         NA            NA
    207 sa_7      18  -- nr_4      14  0.00000000  NA         NA            NA
    208 wi_1      19  -- nr_4      14  0.12663712  NA 0.03350736  1.572178e-04
    209 wi_4      20  -- nr_4      14  0.00000000  NA         NA            NA
    210 wi_5      21  -- nr_4      14  0.00000000  NA         NA            NA
    211 sa_1      16  -- te_4      15  0.00000000  NA         NA            NA
    212 sa_4      17  -- te_4      15  0.00000000  NA         NA            NA
    213 sa_7      18  -- te_4      15  0.00000000  NA         NA            NA
    214 wi_1      19  -- te_4      15  0.00000000  NA         NA            NA
    215 wi_4      20  -- te_4      15  0.12820106  NA 0.03213191  6.611885e-05
    216 wi_5      21  -- te_4      15  0.00000000  NA         NA            NA
    217 sa_4      17  -- sa_1      16  0.20749750  NA 0.04125864  4.925577e-07
    218 sa_7      18  -- sa_1      16  0.28909041  NA 0.03899602  1.231663e-13
    219 wi_1      19  -- sa_1      16  0.00000000  NA         NA            NA
    220 wi_4      20  -- sa_1      16  0.00000000  NA         NA            NA
    221 wi_5      21  -- sa_1      16  0.00000000  NA         NA            NA
    222 sa_7      18  -- sa_4      17  0.34210637  NA 0.03873295  1.024191e-18
    223 wi_1      19  -- sa_4      17  0.00000000  NA         NA            NA
    224 wi_4      20  -- sa_4      17  0.00000000  NA         NA            NA
    225 wi_5      21  -- sa_4      17  0.13653568  NA 0.03261628  2.837629e-05
    226 wi_1      19  -- sa_7      18  0.00000000  NA         NA            NA
    227 wi_4      20  -- sa_7      18  0.00000000  NA         NA            NA
    228 wi_5      21  -- sa_7      18  0.00000000  NA         NA            NA
    229 wi_4      20  -- wi_1      19  0.22453591  NA 0.03940648  1.212613e-08
    230 wi_5      21  -- wi_1      19  0.30004437  NA 0.03951935  3.141766e-14
    231 wi_5      21  -- wi_4      20  0.31418189  NA 0.03840900  2.840716e-16
    232 li_2       1 ~/~ li_2       1  1.39436549  NA 0.04463622 3.205512e-214
    233 li_3       2 ~/~ li_3       2  1.41511156  NA 0.04620473 5.353470e-206
    234 li_4       3 ~/~ li_4       3  1.64189212  NA 0.05415933 7.063077e-202
    235 fi_3       4 ~/~ fi_3       4  1.76750788  NA 0.05843576 5.709145e-201
    236 fi_4       5 ~/~ fi_4       5  1.82564065  NA 0.06038683 8.880039e-201
    237 fi_5       6 ~/~ fi_5       6  1.59944508  NA 0.05278607 1.128690e-201
    238 de_1       7 ~/~ de_1       7  1.66728724  NA 0.05461475 1.102802e-204
    239 de_2       8 ~/~ de_2       8  1.77519382  NA 0.05864276 2.734787e-201
    240 de_5       9 ~/~ de_5       9  1.87144322  NA 0.06189082 7.544588e-201
    241 mt_2      10 ~/~ mt_2      10  1.65526302  NA 0.05412067 1.956983e-205
    242 mt_3      11 ~/~ mt_3      11  1.67814205  NA 0.05529744 2.706241e-202
    243 mt_4      12 ~/~ mt_4      12  1.64920967  NA 0.05306704 4.797851e-212
    244 nr_3      13 ~/~ nr_3      13  1.11492437  NA 0.03651840 1.026940e-204
    245 nr_4      14 ~/~ nr_4      14  1.17493995  NA 0.03698669 1.875725e-221
    246 te_4      15 ~/~ te_4      15  1.13053079  NA 0.03691092 5.089802e-206
    247 sa_1      16 ~/~ sa_1      16  1.45509822  NA 0.04688296 1.718190e-211
    248 sa_4      17 ~/~ sa_4      17  1.56813352  NA 0.05093171 3.684725e-208
    249 sa_7      18 ~/~ sa_7      18  1.56356935  NA 0.05090982 3.872553e-207
    250 wi_1      19 ~/~ wi_1      19  1.23954412  NA 0.04002677 1.459991e-210
    251 wi_4      20 ~/~ wi_4      20  1.18041298  NA 0.03742436 2.360224e-218
    252 wi_5      21 ~/~ wi_5      21  1.33378392  NA 0.04362616 2.795381e-205
        se_boot p_boot matrix row col par      group group_id fixed           mi
    1        NA     NA     mu   1   1   1 fullsample        1 FALSE 0.000000e+00
    2        NA     NA     mu   2   1   2 fullsample        1 FALSE 0.000000e+00
    3        NA     NA     mu   3   1   3 fullsample        1 FALSE 0.000000e+00
    4        NA     NA     mu   4   1   4 fullsample        1 FALSE 0.000000e+00
    5        NA     NA     mu   5   1   5 fullsample        1 FALSE 0.000000e+00
    6        NA     NA     mu   6   1   6 fullsample        1 FALSE 0.000000e+00
    7        NA     NA     mu   7   1   7 fullsample        1 FALSE 0.000000e+00
    8        NA     NA     mu   8   1   8 fullsample        1 FALSE 0.000000e+00
    9        NA     NA     mu   9   1   9 fullsample        1 FALSE 0.000000e+00
    10       NA     NA     mu  10   1  10 fullsample        1 FALSE 0.000000e+00
    11       NA     NA     mu  11   1  11 fullsample        1 FALSE 0.000000e+00
    12       NA     NA     mu  12   1  12 fullsample        1 FALSE 0.000000e+00
    13       NA     NA     mu  13   1  13 fullsample        1 FALSE 0.000000e+00
    14       NA     NA     mu  14   1  14 fullsample        1 FALSE 0.000000e+00
    15       NA     NA     mu  15   1  15 fullsample        1 FALSE 0.000000e+00
    16       NA     NA     mu  16   1  16 fullsample        1 FALSE 0.000000e+00
    17       NA     NA     mu  17   1  17 fullsample        1 FALSE 0.000000e+00
    18       NA     NA     mu  18   1  18 fullsample        1 FALSE 0.000000e+00
    19       NA     NA     mu  19   1  19 fullsample        1 FALSE 0.000000e+00
    20       NA     NA     mu  20   1  20 fullsample        1 FALSE 0.000000e+00
    21       NA     NA     mu  21   1  21 fullsample        1 FALSE 0.000000e+00
    22       NA     NA  omega   2   1  22 fullsample        1 FALSE 1.222000e-07
    23       NA     NA  omega   3   1  23 fullsample        1 FALSE 5.980000e-08
    24       NA     NA  omega   4   1   0 fullsample        1  TRUE 5.896546e-01
    25       NA     NA  omega   5   1   0 fullsample        1  TRUE 3.517468e-01
    26       NA     NA  omega   6   1   0 fullsample        1  TRUE 7.349152e-02
    27       NA     NA  omega   7   1   0 fullsample        1  TRUE 2.846333e+00
    28       NA     NA  omega   8   1  24 fullsample        1 FALSE 1.270000e-08
    29       NA     NA  omega   9   1  25 fullsample        1 FALSE 1.500000e-08
    30       NA     NA  omega  10   1   0 fullsample        1  TRUE 2.586585e+00
    31       NA     NA  omega  11   1   0 fullsample        1  TRUE 1.994855e+00
    32       NA     NA  omega  12   1   0 fullsample        1  TRUE 8.162662e-02
    33       NA     NA  omega  13   1   0 fullsample        1  TRUE 2.071095e+00
    34       NA     NA  omega  14   1   0 fullsample        1  TRUE 3.050369e+00
    35       NA     NA  omega  15   1   0 fullsample        1  TRUE 4.285981e-01
    36       NA     NA  omega  16   1  26 fullsample        1 FALSE 1.590000e-07
    37       NA     NA  omega  17   1  27 fullsample        1 FALSE 1.125000e-07
    38       NA     NA  omega  18   1   0 fullsample        1  TRUE 4.035708e+00
    39       NA     NA  omega  19   1   0 fullsample        1  TRUE 2.943406e-01
    40       NA     NA  omega  20   1  28 fullsample        1 FALSE 1.495000e-07
    41       NA     NA  omega  21   1   0 fullsample        1  TRUE 4.391144e-01
    42       NA     NA  omega   3   2  29 fullsample        1 FALSE 1.260000e-08
    43       NA     NA  omega   4   2   0 fullsample        1  TRUE 2.490270e+00
    44       NA     NA  omega   5   2   0 fullsample        1  TRUE 3.512153e+00
    45       NA     NA  omega   6   2   0 fullsample        1  TRUE 2.038911e+00
    46       NA     NA  omega   7   2   0 fullsample        1  TRUE 5.041916e+00
    47       NA     NA  omega   8   2   0 fullsample        1  TRUE 4.874996e-01
    48       NA     NA  omega   9   2   0 fullsample        1  TRUE 9.442404e-03
    49       NA     NA  omega  10   2   0 fullsample        1  TRUE 8.629941e+00
    50       NA     NA  omega  11   2   0 fullsample        1  TRUE 4.272811e-02
    51       NA     NA  omega  12   2   0 fullsample        1  TRUE 5.280207e+00
    52       NA     NA  omega  13   2   0 fullsample        1  TRUE 4.989313e-01
    53       NA     NA  omega  14   2  30 fullsample        1 FALSE 3.950000e-08
    54       NA     NA  omega  15   2   0 fullsample        1  TRUE 5.995569e+00
    55       NA     NA  omega  16   2   0 fullsample        1  TRUE 1.320521e+01
    56       NA     NA  omega  17   2   0 fullsample        1  TRUE 9.341708e+00
    57       NA     NA  omega  18   2   0 fullsample        1  TRUE 1.365451e+01
    58       NA     NA  omega  19   2  31 fullsample        1 FALSE 2.650000e-08
    59       NA     NA  omega  20   2   0 fullsample        1  TRUE 5.713609e+00
    60       NA     NA  omega  21   2   0 fullsample        1  TRUE 4.663753e-02
    61       NA     NA  omega   4   3   0 fullsample        1  TRUE 7.649632e-01
    62       NA     NA  omega   5   3   0 fullsample        1  TRUE 1.519753e+00
    63       NA     NA  omega   6   3   0 fullsample        1  TRUE 8.711514e-02
    64       NA     NA  omega   7   3   0 fullsample        1  TRUE 2.132162e+00
    65       NA     NA  omega   8   3   0 fullsample        1  TRUE 4.206983e+00
    66       NA     NA  omega   9   3   0 fullsample        1  TRUE 8.824989e-03
    67       NA     NA  omega  10   3   0 fullsample        1  TRUE 5.711357e+00
    68       NA     NA  omega  11   3   0 fullsample        1  TRUE 3.144778e+00
    69       NA     NA  omega  12   3   0 fullsample        1  TRUE 9.374033e+00
    70       NA     NA  omega  13   3   0 fullsample        1  TRUE 1.291876e-02
    71       NA     NA  omega  14   3   0 fullsample        1  TRUE 3.494942e+00
    72       NA     NA  omega  15   3  32 fullsample        1 FALSE 6.100000e-09
    73       NA     NA  omega  16   3   0 fullsample        1  TRUE 4.111853e+00
    74       NA     NA  omega  17   3   0 fullsample        1  TRUE 1.869547e+00
    75       NA     NA  omega  18   3   0 fullsample        1  TRUE 3.832157e+00
    76       NA     NA  omega  19   3   0 fullsample        1  TRUE 2.767758e-01
    77       NA     NA  omega  20   3   0 fullsample        1  TRUE 4.322836e+00
    78       NA     NA  omega  21   3  33 fullsample        1 FALSE 7.800000e-09
    79       NA     NA  omega   5   4  34 fullsample        1 FALSE 0.000000e+00
    80       NA     NA  omega   6   4  35 fullsample        1 FALSE 2.000000e-10
    81       NA     NA  omega   7   4   0 fullsample        1  TRUE 1.831910e+00
    82       NA     NA  omega   8   4   0 fullsample        1  TRUE 6.654167e-01
    83       NA     NA  omega   9   4   0 fullsample        1  TRUE 2.716858e+00
    84       NA     NA  omega  10   4   0 fullsample        1  TRUE 5.190816e-01
    85       NA     NA  omega  11   4   0 fullsample        1  TRUE 8.233970e-01
    86       NA     NA  omega  12   4   0 fullsample        1  TRUE 1.805358e-02
    87       NA     NA  omega  13   4  36 fullsample        1 FALSE 1.400000e-09
    88       NA     NA  omega  14   4   0 fullsample        1  TRUE 7.912433e+00
    89       NA     NA  omega  15   4   0 fullsample        1  TRUE 5.593084e-01
    90       NA     NA  omega  16   4   0 fullsample        1  TRUE 5.151142e-01
    91       NA     NA  omega  17   4   0 fullsample        1  TRUE 2.036929e-01
    92       NA     NA  omega  18   4   0 fullsample        1  TRUE 8.198755e-03
    93       NA     NA  omega  19   4   0 fullsample        1  TRUE 1.954007e-01
    94       NA     NA  omega  20   4   0 fullsample        1  TRUE 3.346014e-01
    95       NA     NA  omega  21   4   0 fullsample        1  TRUE 2.335702e+00
    96       NA     NA  omega   6   5  37 fullsample        1 FALSE 1.000000e-10
    97       NA     NA  omega   7   5   0 fullsample        1  TRUE 3.062448e+00
    98       NA     NA  omega   8   5   0 fullsample        1  TRUE 1.614501e+00
    99       NA     NA  omega   9   5   0 fullsample        1  TRUE 4.193811e-01
    100      NA     NA  omega  10   5   0 fullsample        1  TRUE 5.638452e+00
    101      NA     NA  omega  11   5   0 fullsample        1  TRUE 1.483317e+00
    102      NA     NA  omega  12   5   0 fullsample        1  TRUE 1.150288e+00
    103      NA     NA  omega  13   5   0 fullsample        1  TRUE 8.029981e-02
    104      NA     NA  omega  14   5   0 fullsample        1  TRUE 2.061065e+00
    105      NA     NA  omega  15   5   0 fullsample        1  TRUE 7.573304e-01
    106      NA     NA  omega  16   5   0 fullsample        1  TRUE 3.591787e-03
    107      NA     NA  omega  17   5   0 fullsample        1  TRUE 7.454723e-02
    108      NA     NA  omega  18   5   0 fullsample        1  TRUE 1.272523e-01
    109      NA     NA  omega  19   5   0 fullsample        1  TRUE 1.919499e-01
    110      NA     NA  omega  20   5   0 fullsample        1  TRUE 1.481636e-02
    111      NA     NA  omega  21   5   0 fullsample        1  TRUE 2.736245e-03
    112      NA     NA  omega   7   6   0 fullsample        1  TRUE 2.991269e-01
    113      NA     NA  omega   8   6   0 fullsample        1  TRUE 6.057423e+00
    114      NA     NA  omega   9   6   0 fullsample        1  TRUE 1.438062e+00
    115      NA     NA  omega  10   6   0 fullsample        1  TRUE 3.333889e-01
    116      NA     NA  omega  11   6   0 fullsample        1  TRUE 1.434474e+00
    117      NA     NA  omega  12   6   0 fullsample        1  TRUE 1.367240e+00
    118      NA     NA  omega  13   6   0 fullsample        1  TRUE 1.628240e+01
    119      NA     NA  omega  14   6  38 fullsample        1 FALSE 8.400000e-09
    120      NA     NA  omega  15   6   0 fullsample        1  TRUE 5.517784e+00
    121      NA     NA  omega  16   6   0 fullsample        1  TRUE 1.567254e+00
    122      NA     NA  omega  17   6   0 fullsample        1  TRUE 5.470523e-02
    123      NA     NA  omega  18   6   0 fullsample        1  TRUE 1.094672e+00
    124      NA     NA  omega  19   6   0 fullsample        1  TRUE 1.796916e+00
    125      NA     NA  omega  20   6   0 fullsample        1  TRUE 1.438700e+00
    126      NA     NA  omega  21   6   0 fullsample        1  TRUE 8.269610e-01
    127      NA     NA  omega   8   7  39 fullsample        1 FALSE 1.300000e-09
    128      NA     NA  omega   9   7  40 fullsample        1 FALSE 1.400000e-09
    129      NA     NA  omega  10   7   0 fullsample        1  TRUE 4.791854e+00
    130      NA     NA  omega  11   7   0 fullsample        1  TRUE 3.054734e-01
    131      NA     NA  omega  12   7   0 fullsample        1  TRUE 6.527560e+00
    132      NA     NA  omega  13   7   0 fullsample        1  TRUE 4.968454e-01
    133      NA     NA  omega  14   7  41 fullsample        1 FALSE 8.100000e-09
    134      NA     NA  omega  15   7   0 fullsample        1  TRUE 8.939213e+00
    135      NA     NA  omega  16   7   0 fullsample        1  TRUE 5.305201e+00
    136      NA     NA  omega  17   7   0 fullsample        1  TRUE 1.013118e+01
    137      NA     NA  omega  18   7  42 fullsample        1 FALSE 6.800000e-09
    138      NA     NA  omega  19   7   0 fullsample        1  TRUE 2.444860e+00
    139      NA     NA  omega  20   7   0 fullsample        1  TRUE 1.244955e+01
    140      NA     NA  omega  21   7   0 fullsample        1  TRUE 1.131114e-01
    141      NA     NA  omega   9   8  43 fullsample        1 FALSE 2.000000e-10
    142      NA     NA  omega  10   8   0 fullsample        1  TRUE 1.681536e-01
    143      NA     NA  omega  11   8   0 fullsample        1  TRUE 5.376655e-02
    144      NA     NA  omega  12   8  44 fullsample        1 FALSE 1.000000e-10
    145      NA     NA  omega  13   8   0 fullsample        1  TRUE 1.813940e+01
    146      NA     NA  omega  14   8   0 fullsample        1  TRUE 4.938641e+00
    147      NA     NA  omega  15   8   0 fullsample        1  TRUE 1.767980e+01
    148      NA     NA  omega  16   8   0 fullsample        1  TRUE 4.761234e+00
    149      NA     NA  omega  17   8   0 fullsample        1  TRUE 3.802629e+00
    150      NA     NA  omega  18   8   0 fullsample        1  TRUE 2.094932e+00
    151      NA     NA  omega  19   8   0 fullsample        1  TRUE 4.126179e+00
    152      NA     NA  omega  20   8   0 fullsample        1  TRUE 1.619577e+00
    153      NA     NA  omega  21   8   0 fullsample        1  TRUE 5.971790e-01
    154      NA     NA  omega  10   9   0 fullsample        1  TRUE 6.472457e+00
    155      NA     NA  omega  11   9   0 fullsample        1  TRUE 6.126992e+00
    156      NA     NA  omega  12   9   0 fullsample        1  TRUE 1.103800e+01
    157      NA     NA  omega  13   9   0 fullsample        1  TRUE 5.259808e-01
    158      NA     NA  omega  14   9   0 fullsample        1  TRUE 1.103567e+00
    159      NA     NA  omega  15   9   0 fullsample        1  TRUE 6.629938e-01
    160      NA     NA  omega  16   9   0 fullsample        1  TRUE 1.020722e+00
    161      NA     NA  omega  17   9   0 fullsample        1  TRUE 4.689072e-03
    162      NA     NA  omega  18   9   0 fullsample        1  TRUE 5.084259e-02
    163      NA     NA  omega  19   9   0 fullsample        1  TRUE 9.831853e-01
    164      NA     NA  omega  20   9   0 fullsample        1  TRUE 9.276741e-01
    165      NA     NA  omega  21   9   0 fullsample        1  TRUE 2.005452e-01
    166      NA     NA  omega  11  10   0 fullsample        1  TRUE 3.400673e+00
    167      NA     NA  omega  12  10  45 fullsample        1 FALSE 1.010000e-08
    168      NA     NA  omega  13  10   0 fullsample        1  TRUE 2.883143e+00
    169      NA     NA  omega  14  10   0 fullsample        1  TRUE 3.301940e+00
    170      NA     NA  omega  15  10   0 fullsample        1  TRUE 7.762043e+00
    171      NA     NA  omega  16  10   0 fullsample        1  TRUE 3.248547e+00
    172      NA     NA  omega  17  10  46 fullsample        1 FALSE 2.200000e-08
    173      NA     NA  omega  18  10   0 fullsample        1  TRUE 1.073981e+00
    174      NA     NA  omega  19  10   0 fullsample        1  TRUE 3.672132e+00
    175      NA     NA  omega  20  10  47 fullsample        1 FALSE 2.120000e-08
    176      NA     NA  omega  21  10   0 fullsample        1  TRUE 8.100752e-02
    177      NA     NA  omega  12  11  48 fullsample        1 FALSE 2.500000e-09
    178      NA     NA  omega  13  11  49 fullsample        1 FALSE 3.600000e-09
    179      NA     NA  omega  14  11   0 fullsample        1  TRUE 3.156840e-02
    180      NA     NA  omega  15  11   0 fullsample        1  TRUE 1.563649e+00
    181      NA     NA  omega  16  11   0 fullsample        1  TRUE 2.693008e+00
    182      NA     NA  omega  17  11   0 fullsample        1  TRUE 8.378134e-03
    183      NA     NA  omega  18  11   0 fullsample        1  TRUE 3.214660e+00
    184      NA     NA  omega  19  11  50 fullsample        1 FALSE 5.900000e-09
    185      NA     NA  omega  20  11   0 fullsample        1  TRUE 8.917381e+00
    186      NA     NA  omega  21  11   0 fullsample        1  TRUE 3.651171e+00
    187      NA     NA  omega  13  12   0 fullsample        1  TRUE 1.898510e+00
    188      NA     NA  omega  14  12   0 fullsample        1  TRUE 4.104382e-01
    189      NA     NA  omega  15  12   0 fullsample        1  TRUE 8.461193e-01
    190      NA     NA  omega  16  12  51 fullsample        1 FALSE 1.350000e-08
    191      NA     NA  omega  17  12   0 fullsample        1  TRUE 7.718438e-01
    192      NA     NA  omega  18  12  52 fullsample        1 FALSE 9.400000e-09
    193      NA     NA  omega  19  12   0 fullsample        1  TRUE 2.137537e-01
    194      NA     NA  omega  20  12   0 fullsample        1  TRUE 3.839617e+00
    195      NA     NA  omega  21  12   0 fullsample        1  TRUE 2.792633e-01
    196      NA     NA  omega  14  13  53 fullsample        1 FALSE 2.440000e-08
    197      NA     NA  omega  15  13  54 fullsample        1 FALSE 1.320000e-08
    198      NA     NA  omega  16  13   0 fullsample        1  TRUE 4.160078e-01
    199      NA     NA  omega  17  13  55 fullsample        1 FALSE 2.720000e-08
    200      NA     NA  omega  18  13   0 fullsample        1  TRUE 6.877241e-01
    201      NA     NA  omega  19  13   0 fullsample        1  TRUE 2.119044e+00
    202      NA     NA  omega  20  13   0 fullsample        1  TRUE 6.104066e-01
    203      NA     NA  omega  21  13   0 fullsample        1  TRUE 3.490062e-01
    204      NA     NA  omega  15  14  56 fullsample        1 FALSE 1.440000e-08
    205      NA     NA  omega  16  14  57 fullsample        1 FALSE 4.170000e-08
    206      NA     NA  omega  17  14   0 fullsample        1  TRUE 4.704302e+00
    207      NA     NA  omega  18  14   0 fullsample        1  TRUE 7.419546e+00
    208      NA     NA  omega  19  14  58 fullsample        1 FALSE 2.600000e-08
    209      NA     NA  omega  20  14   0 fullsample        1  TRUE 5.422212e-01
    210      NA     NA  omega  21  14   0 fullsample        1  TRUE 6.424032e-01
    211      NA     NA  omega  16  15   0 fullsample        1  TRUE 1.308981e+01
    212      NA     NA  omega  17  15   0 fullsample        1  TRUE 3.081380e+00
    213      NA     NA  omega  18  15   0 fullsample        1  TRUE 4.006504e+00
    214      NA     NA  omega  19  15   0 fullsample        1  TRUE 4.071979e+00
    215      NA     NA  omega  20  15  59 fullsample        1 FALSE 1.280000e-08
    216      NA     NA  omega  21  15   0 fullsample        1  TRUE 3.952717e+00
    217      NA     NA  omega  17  16  60 fullsample        1 FALSE 3.850000e-08
    218      NA     NA  omega  18  16  61 fullsample        1 FALSE 3.220000e-08
    219      NA     NA  omega  19  16   0 fullsample        1  TRUE 8.474982e+00
    220      NA     NA  omega  20  16   0 fullsample        1  TRUE 1.060290e+01
    221      NA     NA  omega  21  16   0 fullsample        1  TRUE 5.315879e-01
    222      NA     NA  omega  18  17  62 fullsample        1 FALSE 1.730000e-08
    223      NA     NA  omega  19  17   0 fullsample        1  TRUE 2.415350e-01
    224      NA     NA  omega  20  17   0 fullsample        1  TRUE 1.221989e+01
    225      NA     NA  omega  21  17  63 fullsample        1 FALSE 1.420000e-08
    226      NA     NA  omega  19  18   0 fullsample        1  TRUE 4.227968e+00
    227      NA     NA  omega  20  18   0 fullsample        1  TRUE 1.545823e+01
    228      NA     NA  omega  21  18   0 fullsample        1  TRUE 1.892190e+00
    229      NA     NA  omega  20  19  64 fullsample        1 FALSE 3.140000e-08
    230      NA     NA  omega  21  19  65 fullsample        1 FALSE 2.160000e-08
    231      NA     NA  omega  21  20  66 fullsample        1 FALSE 2.290000e-08
    232      NA     NA  delta   1   1  67 fullsample        1 FALSE 1.016000e-07
    233      NA     NA  delta   2   2  68 fullsample        1 FALSE 7.000000e-10
    234      NA     NA  delta   3   3  69 fullsample        1 FALSE 0.000000e+00
    235      NA     NA  delta   4   4  70 fullsample        1 FALSE 0.000000e+00
    236      NA     NA  delta   5   5  71 fullsample        1 FALSE 0.000000e+00
    237      NA     NA  delta   6   6  72 fullsample        1 FALSE 0.000000e+00
    238      NA     NA  delta   7   7  73 fullsample        1 FALSE 0.000000e+00
    239      NA     NA  delta   8   8  74 fullsample        1 FALSE 0.000000e+00
    240      NA     NA  delta   9   9  75 fullsample        1 FALSE 0.000000e+00
    241      NA     NA  delta  10  10  76 fullsample        1 FALSE 7.000000e-10
    242      NA     NA  delta  11  11  77 fullsample        1 FALSE 0.000000e+00
    243      NA     NA  delta  12  12  78 fullsample        1 FALSE 0.000000e+00
    244      NA     NA  delta  13  13  79 fullsample        1 FALSE 1.200000e-09
    245      NA     NA  delta  14  14  80 fullsample        1 FALSE 5.000000e-10
    246      NA     NA  delta  15  15  81 fullsample        1 FALSE 2.000000e-10
    247      NA     NA  delta  16  16  82 fullsample        1 FALSE 8.000000e-10
    248      NA     NA  delta  17  17  83 fullsample        1 FALSE 5.000000e-10
    249      NA     NA  delta  18  18  84 fullsample        1 FALSE 1.000000e-10
    250      NA     NA  delta  19  19  85 fullsample        1 FALSE 1.500000e-09
    251      NA     NA  delta  20  20  86 fullsample        1 FALSE 0.000000e+00
    252      NA     NA  delta  21  21  87 fullsample        1 FALSE 0.000000e+00
                 pmi           epc mi_free pmi_free epc_free mi_equal pmi_equal
    1   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    2   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    3   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    4   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    5   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    6   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    7   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    8   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    9   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    10  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    11  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    12  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    13  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    14  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    15  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    16  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    17  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    18  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    19  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    20  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    21  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    22  0.9997211348 -0.0000091655      NA       NA       NA       NA        NA
    23  0.9998048801 -0.0000077263      NA       NA       NA       NA        NA
    24  0.4425527172 -0.0272260840      NA       NA       NA       NA        NA
    25  0.5531259481 -0.0206276372      NA       NA       NA       NA        NA
    26  0.7863193525 -0.0096406523      NA       NA       NA       NA        NA
    27  0.0915826096  0.0636717172      NA       NA       NA       NA        NA
    28  0.9999100609 -0.0000038201      NA       NA       NA       NA        NA
    29  0.9999022540 -0.0000041893      NA       NA       NA       NA        NA
    30  0.1077725059  0.0631219693      NA       NA       NA       NA        NA
    31  0.1578341849 -0.0523969871      NA       NA       NA       NA        NA
    32  0.7751050479  0.0106232316      NA       NA       NA       NA        NA
    33  0.1501137099  0.0520680195      NA       NA       NA       NA        NA
    34  0.0807187897  0.0651275867      NA       NA       NA       NA        NA
    35  0.5126776589  0.0235849591      NA       NA       NA       NA        NA
    36  0.9996818443 -0.0000094829      NA       NA       NA       NA        NA
    37  0.9997323595 -0.0000085964      NA       NA       NA       NA        NA
    38  0.0445469825  0.0812809542      NA       NA       NA       NA        NA
    39  0.5874522941  0.0217153363      NA       NA       NA       NA        NA
    40  0.9996915347 -0.0000094111      NA       NA       NA       NA        NA
    41  0.5075501984 -0.0263237068      NA       NA       NA       NA        NA
    42  0.9999105231 -0.0000036250      NA       NA       NA       NA        NA
    43  0.1145521016 -0.0582429782      NA       NA       NA       NA        NA
    44  0.0609202409 -0.0679883905      NA       NA       NA       NA        NA
    45  0.1533194132 -0.0537091048      NA       NA       NA       NA        NA
    46  0.0247411045  0.0856990022      NA       NA       NA       NA        NA
    47  0.4850448022  0.0287057704      NA       NA       NA       NA        NA
    48  0.9225897752 -0.0040729488      NA       NA       NA       NA        NA
    49  0.0033068220  0.1077007541      NA       NA       NA       NA        NA
    50  0.8362380826  0.0081784759      NA       NA       NA       NA        NA
    51  0.0215691864  0.0792118058      NA       NA       NA       NA        NA
    52  0.4799700771  0.0270391477      NA       NA       NA       NA        NA
    53  0.9998414057 -0.0000051762      NA       NA       NA       NA        NA
    54  0.0143418551  0.0978594938      NA       NA       NA       NA        NA
    55  0.0002791713  0.1356972855      NA       NA       NA       NA        NA
    56  0.0022399670  0.1129627799      NA       NA       NA       NA        NA
    57  0.0002197126  0.1231090088      NA       NA       NA       NA        NA
    58  0.9998702083 -0.0000042315      NA       NA       NA       NA        NA
    59  0.0168338951  0.0957541589      NA       NA       NA       NA        NA
    60  0.8290210689 -0.0087379044      NA       NA       NA       NA        NA
    61  0.3817797445 -0.0360589344      NA       NA       NA       NA        NA
    62  0.2176569383 -0.0502666311      NA       NA       NA       NA        NA
    63  0.7678771993 -0.0120101764      NA       NA       NA       NA        NA
    64  0.1442371884  0.0585340505      NA       NA       NA       NA        NA
    65  0.0402578813  0.0866416889      NA       NA       NA       NA        NA
    66  0.9251556988  0.0040526456      NA       NA       NA       NA        NA
    67  0.0168555033  0.0947976041      NA       NA       NA       NA        NA
    68  0.0761703649  0.0728715404      NA       NA       NA       NA        NA
    69  0.0022008083  0.1139144815      NA       NA       NA       NA        NA
    70  0.9095067409  0.0047945188      NA       NA       NA       NA        NA
    71  0.0615565461  0.0775294882      NA       NA       NA       NA        NA
    72  0.9999375977 -0.0000025039      NA       NA       NA       NA        NA
    73  0.0425836778  0.0759877926      NA       NA       NA       NA        NA
    74  0.1715269806  0.0525097451      NA       NA       NA       NA        NA
    75  0.0502782018  0.0695836906      NA       NA       NA       NA        NA
    76  0.5988223064  0.0229601404      NA       NA       NA       NA        NA
    77  0.0376041897  0.0881144658      NA       NA       NA       NA        NA
    78  0.9999296581 -0.0000027746      NA       NA       NA       NA        NA
    79  0.9999964602 -0.0000001866      NA       NA       NA       NA        NA
    80  0.9999894098 -0.0000005322      NA       NA       NA       NA        NA
    81  0.1759020595 -0.0546457237      NA       NA       NA       NA        NA
    82  0.4146541466 -0.0345473046      NA       NA       NA       NA        NA
    83  0.0992932855 -0.0708563171      NA       NA       NA       NA        NA
    84  0.4712337014  0.0280777101      NA       NA       NA       NA        NA
    85  0.3641888434 -0.0382109717      NA       NA       NA       NA        NA
    86  0.8931150563 -0.0050184956      NA       NA       NA       NA        NA
    87  0.9999703864  0.0000013700      NA       NA       NA       NA        NA
    88  0.0049096200 -0.1073520412      NA       NA       NA       NA        NA
    89  0.4545390396 -0.0298284206      NA       NA       NA       NA        NA
    90  0.4729333004 -0.0242674562      NA       NA       NA       NA        NA
    91  0.6517563903 -0.0160727394      NA       NA       NA       NA        NA
    92  0.9278525639  0.0031408770      NA       NA       NA       NA        NA
    93  0.6584591678  0.0153904135      NA       NA       NA       NA        NA
    94  0.5629620924  0.0194685456      NA       NA       NA       NA        NA
    95  0.1264379866  0.0535553585      NA       NA       NA       NA        NA
    96  0.9999939834 -0.0000003026      NA       NA       NA       NA        NA
    97  0.0801208785 -0.0697062880      NA       NA       NA       NA        NA
    98  0.2038602352 -0.0537687575      NA       NA       NA       NA        NA
    99  0.5172460176 -0.0278381236      NA       NA       NA       NA        NA
    100 0.0175707132  0.0918515107      NA       NA       NA       NA        NA
    101 0.2232562288  0.0499338268      NA       NA       NA       NA        NA
    102 0.2834888953  0.0395489216      NA       NA       NA       NA        NA
    103 0.7768915281 -0.0108662365      NA       NA       NA       NA        NA
    104 0.1511045217 -0.0494543594      NA       NA       NA       NA        NA
    105 0.3841652476 -0.0309720165      NA       NA       NA       NA        NA
    106 0.9522101766 -0.0019639476      NA       NA       NA       NA        NA
    107 0.7848275467 -0.0093349151      NA       NA       NA       NA        NA
    108 0.7212981433  0.0121148430      NA       NA       NA       NA        NA
    109 0.6612986899 -0.0149049438      NA       NA       NA       NA        NA
    110 0.9031188135  0.0040012391      NA       NA       NA       NA        NA
    111 0.9582823784 -0.0018021784      NA       NA       NA       NA        NA
    112 0.5844303185 -0.0226267607      NA       NA       NA       NA        NA
    113 0.0138479624 -0.1019459370      NA       NA       NA       NA        NA
    114 0.2304531364 -0.0503575141      NA       NA       NA       NA        NA
    115 0.5636703568  0.0220466295      NA       NA       NA       NA        NA
    116 0.2310357405  0.0484956694      NA       NA       NA       NA        NA
    117 0.2422866571  0.0428358174      NA       NA       NA       NA        NA
    118 0.0000545683 -0.1707891583      NA       NA       NA       NA        NA
    119 0.9999268575  0.0000028630      NA       NA       NA       NA        NA
    120 0.0188240922 -0.0965799971      NA       NA       NA       NA        NA
    121 0.2106062177  0.0437644335      NA       NA       NA       NA        NA
    122 0.8150692158 -0.0081816733      NA       NA       NA       NA        NA
    123 0.2954383596  0.0361871156      NA       NA       NA       NA        NA
    124 0.1800858143 -0.0479220921      NA       NA       NA       NA        NA
    125 0.2303497736 -0.0404298442      NA       NA       NA       NA        NA
    126 0.3631527702 -0.0317152221      NA       NA       NA       NA        NA
    127 0.9999717710 -0.0000013422      NA       NA       NA       NA        NA
    128 0.9999703476 -0.0000014507      NA       NA       NA       NA        NA
    129 0.0285946331  0.0837954307      NA       NA       NA       NA        NA
    130 0.5804712542  0.0220849701      NA       NA       NA       NA        NA
    131 0.0106215585  0.1005262220      NA       NA       NA       NA        NA
    132 0.4808894934  0.0293177063      NA       NA       NA       NA        NA
    133 0.9999283117 -0.0000025652      NA       NA       NA       NA        NA
    134 0.0027911295  0.1228508962      NA       NA       NA       NA        NA
    135 0.0212618478  0.0942306274      NA       NA       NA       NA        NA
    136 0.0014578214  0.1310699308      NA       NA       NA       NA        NA
    137 0.9999340716 -0.0000024396      NA       NA       NA       NA        NA
    138 0.1179104288  0.0565047581      NA       NA       NA       NA        NA
    139 0.0004180926  0.1192054220      NA       NA       NA       NA        NA
    140 0.7366292772  0.0117773719      NA       NA       NA       NA        NA
    141 0.9999880994 -0.0000006182      NA       NA       NA       NA        NA
    142 0.6817580019  0.0176186397      NA       NA       NA       NA        NA
    143 0.8166342002 -0.0102423188      NA       NA       NA       NA        NA
    144 0.9999907584 -0.0000004137      NA       NA       NA       NA        NA
    145 0.0000205309  0.1651016041      NA       NA       NA       NA        NA
    146 0.0262626839  0.0822193439      NA       NA       NA       NA        NA
    147 0.0000261388  0.1547036826      NA       NA       NA       NA        NA
    148 0.0291076720  0.0856434191      NA       NA       NA       NA        NA
    149 0.0511721848  0.0742274535      NA       NA       NA       NA        NA
    150 0.1477882987  0.0565389351      NA       NA       NA       NA        NA
    151 0.0422245859  0.0737842768      NA       NA       NA       NA        NA
    152 0.2031507524  0.0463929609      NA       NA       NA       NA        NA
    153 0.4396563786  0.0281398550      NA       NA       NA       NA        NA
    154 0.0109558939  0.1023025552      NA       NA       NA       NA        NA
    155 0.0133133166  0.1036071546      NA       NA       NA       NA        NA
    156 0.0008926303  0.1314692659      NA       NA       NA       NA        NA
    157 0.4683015228  0.0282551244      NA       NA       NA       NA        NA
    158 0.2934845864  0.0387532007      NA       NA       NA       NA        NA
    159 0.4155050073  0.0301987857      NA       NA       NA       NA        NA
    160 0.3123478486  0.0385384512      NA       NA       NA       NA        NA
    161 0.9454060883  0.0026082163      NA       NA       NA       NA        NA
    162 0.8216035297  0.0086157391      NA       NA       NA       NA        NA
    163 0.3214136616  0.0363050632      NA       NA       NA       NA        NA
    164 0.3354680271  0.0353857079      NA       NA       NA       NA        NA
    165 0.6542811136 -0.0164653465      NA       NA       NA       NA        NA
    166 0.0651698306  0.0812817821      NA       NA       NA       NA        NA
    167 0.9999198181 -0.0000030808      NA       NA       NA       NA        NA
    168 0.0895111777  0.0634620967      NA       NA       NA       NA        NA
    169 0.0691980945  0.0619074129      NA       NA       NA       NA        NA
    170 0.0053355577  0.1026952005      NA       NA       NA       NA        NA
    171 0.0714868055  0.0712448554      NA       NA       NA       NA        NA
    172 0.9998817117 -0.0000044268      NA       NA       NA       NA        NA
    173 0.3000479231  0.0420360511      NA       NA       NA       NA        NA
    174 0.0553293703  0.0750423870      NA       NA       NA       NA        NA
    175 0.9998837317 -0.0000040070      NA       NA       NA       NA        NA
    176 0.7759366708 -0.0116878831      NA       NA       NA       NA        NA
    177 0.9999605010 -0.0000016330      NA       NA       NA       NA        NA
    178 0.9999520261 -0.0000020841      NA       NA       NA       NA        NA
    179 0.8589782325 -0.0068315208      NA       NA       NA       NA        NA
    180 0.2111316765  0.0499043928      NA       NA       NA       NA        NA
    181 0.1007894071  0.0611419242      NA       NA       NA       NA        NA
    182 0.9270697622  0.0034006337      NA       NA       NA       NA        NA
    183 0.0729813578  0.0666255608      NA       NA       NA       NA        NA
    184 0.9999386152 -0.0000024355      NA       NA       NA       NA        NA
    185 0.0028246937  0.1147209410      NA       NA       NA       NA        NA
    186 0.0560298074  0.0764822885      NA       NA       NA       NA        NA
    187 0.1682452404  0.0516124627      NA       NA       NA       NA        NA
    188 0.5217471617  0.0217855665      NA       NA       NA       NA        NA
    189 0.3576524848  0.0309346141      NA       NA       NA       NA        NA
    190 0.9999074304 -0.0000030376      NA       NA       NA       NA        NA
    191 0.3796472652  0.0368346839      NA       NA       NA       NA        NA
    192 0.9999228161 -0.0000026942      NA       NA       NA       NA        NA
    193 0.6438410764  0.0159051123      NA       NA       NA       NA        NA
    194 0.0500549652  0.0690040475      NA       NA       NA       NA        NA
    195 0.5971844627 -0.0178533610      NA       NA       NA       NA        NA
    196 0.9998753429 -0.0000040325      NA       NA       NA       NA        NA
    197 0.9999083936 -0.0000031563      NA       NA       NA       NA        NA
    198 0.5189358480  0.0251016544      NA       NA       NA       NA        NA
    199 0.9998683058 -0.0000046839      NA       NA       NA       NA        NA
    200 0.4069395894 -0.0316085497      NA       NA       NA       NA        NA
    201 0.1454773166  0.0539627342      NA       NA       NA       NA        NA
    202 0.4346347554  0.0280416280      NA       NA       NA       NA        NA
    203 0.5546762349  0.0208900640      NA       NA       NA       NA        NA
    204 0.9999042473 -0.0000028032      NA       NA       NA       NA        NA
    205 0.9998370006 -0.0000046786      NA       NA       NA       NA        NA
    206 0.0300872224  0.0805499338      NA       NA       NA       NA        NA
    207 0.0064519109  0.0981325408      NA       NA       NA       NA        NA
    208 0.9998712883 -0.0000038887      NA       NA       NA       NA        NA
    209 0.4615136372  0.0270908312      NA       NA       NA       NA        NA
    210 0.4228419132  0.0284481951      NA       NA       NA       NA        NA
    211 0.0002969062  0.1295915033      NA       NA       NA       NA        NA
    212 0.0791932865  0.0624527074      NA       NA       NA       NA        NA
    213 0.0453250470  0.0647809220      NA       NA       NA       NA        NA
    214 0.0436001727  0.0799873500      NA       NA       NA       NA        NA
    215 0.9999097075 -0.0000028549      NA       NA       NA       NA        NA
    216 0.0467957649  0.0747781438      NA       NA       NA       NA        NA
    217 0.9998434829 -0.0000044703      NA       NA       NA       NA        NA
    218 0.9998568242 -0.0000040264      NA       NA       NA       NA        NA
    219 0.0036006389  0.0964082996      NA       NA       NA       NA        NA
    220 0.0011291041  0.1085175109      NA       NA       NA       NA        NA
    221 0.4659400533  0.0252844497      NA       NA       NA       NA        NA
    222 0.9998950268 -0.0000030803      NA       NA       NA       NA        NA
    223 0.6230996824 -0.0177371495      NA       NA       NA       NA        NA
    224 0.0004728262  0.1310471292      NA       NA       NA       NA        NA
    225 0.9999048410 -0.0000030737      NA       NA       NA       NA        NA
    226 0.0397630260  0.0645094355      NA       NA       NA       NA        NA
    227 0.0000843488  0.1221184820      NA       NA       NA       NA        NA
    228 0.1689550969  0.0484592939      NA       NA       NA       NA        NA
    229 0.9998586467 -0.0000040470      NA       NA       NA       NA        NA
    230 0.9998826653 -0.0000035019      NA       NA       NA       NA        NA
    231 0.9998792347 -0.0000034679      NA       NA       NA       NA        NA
    232 0.9997456792 -0.0000127088      NA       NA       NA       NA        NA
    233 0.9999791239  0.0000010859      NA       NA       NA       NA        NA
    234 0.9999962775  0.0000002409      NA       NA       NA       NA        NA
    235 0.9999989698 -0.0000000737      NA       NA       NA       NA        NA
    236 0.9999999322 -0.0000000050      NA       NA       NA       NA        NA
    237 0.9999945631 -0.0000003468      NA       NA       NA       NA        NA
    238 0.9999994053 -0.0000000385      NA       NA       NA       NA        NA
    239 0.9999981855  0.0000001297      NA       NA       NA       NA        NA
    240 0.9999998334 -0.0000000127      NA       NA       NA       NA        NA
    241 0.9999793108 -0.0000013112      NA       NA       NA       NA        NA
    242 0.9999992195 -0.0000000518      NA       NA       NA       NA        NA
    243 0.9999976643 -0.0000001433      NA       NA       NA       NA        NA
    244 0.9999723311 -0.0000011561      NA       NA       NA       NA        NA
    245 0.9999821935 -0.0000007228      NA       NA       NA       NA        NA
    246 0.9999896132  0.0000004234      NA       NA       NA       NA        NA
    247 0.9999774520 -0.0000011288      NA       NA       NA       NA        NA
    248 0.9999823566  0.0000009804      NA       NA       NA       NA        NA
    249 0.9999924423  0.0000004173      NA       NA       NA       NA        NA
    250 0.9999689951 -0.0000013561      NA       NA       NA       NA        NA
    251 0.9999982398  0.0000000718      NA       NA       NA       NA        NA
    252 0.9999997004  0.0000000142      NA       NA       NA       NA        NA
        epc_equal minimum maximum identified
    1          NA    -Inf     Inf      FALSE
    2          NA    -Inf     Inf      FALSE
    3          NA    -Inf     Inf      FALSE
    4          NA    -Inf     Inf      FALSE
    5          NA    -Inf     Inf      FALSE
    6          NA    -Inf     Inf      FALSE
    7          NA    -Inf     Inf      FALSE
    8          NA    -Inf     Inf      FALSE
    9          NA    -Inf     Inf      FALSE
    10         NA    -Inf     Inf      FALSE
    11         NA    -Inf     Inf      FALSE
    12         NA    -Inf     Inf      FALSE
    13         NA    -Inf     Inf      FALSE
    14         NA    -Inf     Inf      FALSE
    15         NA    -Inf     Inf      FALSE
    16         NA    -Inf     Inf      FALSE
    17         NA    -Inf     Inf      FALSE
    18         NA    -Inf     Inf      FALSE
    19         NA    -Inf     Inf      FALSE
    20         NA    -Inf     Inf      FALSE
    21         NA    -Inf     Inf      FALSE
    22         NA      -1       1      FALSE
    23         NA      -1       1      FALSE
    24         NA      -1       1      FALSE
    25         NA      -1       1      FALSE
    26         NA      -1       1      FALSE
    27         NA      -1       1      FALSE
    28         NA      -1       1      FALSE
    29         NA      -1       1      FALSE
    30         NA      -1       1      FALSE
    31         NA      -1       1      FALSE
    32         NA      -1       1      FALSE
    33         NA      -1       1      FALSE
    34         NA      -1       1      FALSE
    35         NA      -1       1      FALSE
    36         NA      -1       1      FALSE
    37         NA      -1       1      FALSE
    38         NA      -1       1      FALSE
    39         NA      -1       1      FALSE
    40         NA      -1       1      FALSE
    41         NA      -1       1      FALSE
    42         NA      -1       1      FALSE
    43         NA      -1       1      FALSE
    44         NA      -1       1      FALSE
    45         NA      -1       1      FALSE
    46         NA      -1       1      FALSE
    47         NA      -1       1      FALSE
    48         NA      -1       1      FALSE
    49         NA      -1       1      FALSE
    50         NA      -1       1      FALSE
    51         NA      -1       1      FALSE
    52         NA      -1       1      FALSE
    53         NA      -1       1      FALSE
    54         NA      -1       1      FALSE
    55         NA      -1       1      FALSE
    56         NA      -1       1      FALSE
    57         NA      -1       1      FALSE
    58         NA      -1       1      FALSE
    59         NA      -1       1      FALSE
    60         NA      -1       1      FALSE
    61         NA      -1       1      FALSE
    62         NA      -1       1      FALSE
    63         NA      -1       1      FALSE
    64         NA      -1       1      FALSE
    65         NA      -1       1      FALSE
    66         NA      -1       1      FALSE
    67         NA      -1       1      FALSE
    68         NA      -1       1      FALSE
    69         NA      -1       1      FALSE
    70         NA      -1       1      FALSE
    71         NA      -1       1      FALSE
    72         NA      -1       1      FALSE
    73         NA      -1       1      FALSE
    74         NA      -1       1      FALSE
    75         NA      -1       1      FALSE
    76         NA      -1       1      FALSE
    77         NA      -1       1      FALSE
    78         NA      -1       1      FALSE
    79         NA      -1       1      FALSE
    80         NA      -1       1      FALSE
    81         NA      -1       1      FALSE
    82         NA      -1       1      FALSE
    83         NA      -1       1      FALSE
    84         NA      -1       1      FALSE
    85         NA      -1       1      FALSE
    86         NA      -1       1      FALSE
    87         NA      -1       1      FALSE
    88         NA      -1       1      FALSE
    89         NA      -1       1      FALSE
    90         NA      -1       1      FALSE
    91         NA      -1       1      FALSE
    92         NA      -1       1      FALSE
    93         NA      -1       1      FALSE
    94         NA      -1       1      FALSE
    95         NA      -1       1      FALSE
    96         NA      -1       1      FALSE
    97         NA      -1       1      FALSE
    98         NA      -1       1      FALSE
    99         NA      -1       1      FALSE
    100        NA      -1       1      FALSE
    101        NA      -1       1      FALSE
    102        NA      -1       1      FALSE
    103        NA      -1       1      FALSE
    104        NA      -1       1      FALSE
    105        NA      -1       1      FALSE
    106        NA      -1       1      FALSE
    107        NA      -1       1      FALSE
    108        NA      -1       1      FALSE
    109        NA      -1       1      FALSE
    110        NA      -1       1      FALSE
    111        NA      -1       1      FALSE
    112        NA      -1       1      FALSE
    113        NA      -1       1      FALSE
    114        NA      -1       1      FALSE
    115        NA      -1       1      FALSE
    116        NA      -1       1      FALSE
    117        NA      -1       1      FALSE
    118        NA      -1       1      FALSE
    119        NA      -1       1      FALSE
    120        NA      -1       1      FALSE
    121        NA      -1       1      FALSE
    122        NA      -1       1      FALSE
    123        NA      -1       1      FALSE
    124        NA      -1       1      FALSE
    125        NA      -1       1      FALSE
    126        NA      -1       1      FALSE
    127        NA      -1       1      FALSE
    128        NA      -1       1      FALSE
    129        NA      -1       1      FALSE
    130        NA      -1       1      FALSE
    131        NA      -1       1      FALSE
    132        NA      -1       1      FALSE
    133        NA      -1       1      FALSE
    134        NA      -1       1      FALSE
    135        NA      -1       1      FALSE
    136        NA      -1       1      FALSE
    137        NA      -1       1      FALSE
    138        NA      -1       1      FALSE
    139        NA      -1       1      FALSE
    140        NA      -1       1      FALSE
    141        NA      -1       1      FALSE
    142        NA      -1       1      FALSE
    143        NA      -1       1      FALSE
    144        NA      -1       1      FALSE
    145        NA      -1       1      FALSE
    146        NA      -1       1      FALSE
    147        NA      -1       1      FALSE
    148        NA      -1       1      FALSE
    149        NA      -1       1      FALSE
    150        NA      -1       1      FALSE
    151        NA      -1       1      FALSE
    152        NA      -1       1      FALSE
    153        NA      -1       1      FALSE
    154        NA      -1       1      FALSE
    155        NA      -1       1      FALSE
    156        NA      -1       1      FALSE
    157        NA      -1       1      FALSE
    158        NA      -1       1      FALSE
    159        NA      -1       1      FALSE
    160        NA      -1       1      FALSE
    161        NA      -1       1      FALSE
    162        NA      -1       1      FALSE
    163        NA      -1       1      FALSE
    164        NA      -1       1      FALSE
    165        NA      -1       1      FALSE
    166        NA      -1       1      FALSE
    167        NA      -1       1      FALSE
    168        NA      -1       1      FALSE
    169        NA      -1       1      FALSE
    170        NA      -1       1      FALSE
    171        NA      -1       1      FALSE
    172        NA      -1       1      FALSE
    173        NA      -1       1      FALSE
    174        NA      -1       1      FALSE
    175        NA      -1       1      FALSE
    176        NA      -1       1      FALSE
    177        NA      -1       1      FALSE
    178        NA      -1       1      FALSE
    179        NA      -1       1      FALSE
    180        NA      -1       1      FALSE
    181        NA      -1       1      FALSE
    182        NA      -1       1      FALSE
    183        NA      -1       1      FALSE
    184        NA      -1       1      FALSE
    185        NA      -1       1      FALSE
    186        NA      -1       1      FALSE
    187        NA      -1       1      FALSE
    188        NA      -1       1      FALSE
    189        NA      -1       1      FALSE
    190        NA      -1       1      FALSE
    191        NA      -1       1      FALSE
    192        NA      -1       1      FALSE
    193        NA      -1       1      FALSE
    194        NA      -1       1      FALSE
    195        NA      -1       1      FALSE
    196        NA      -1       1      FALSE
    197        NA      -1       1      FALSE
    198        NA      -1       1      FALSE
    199        NA      -1       1      FALSE
    200        NA      -1       1      FALSE
    201        NA      -1       1      FALSE
    202        NA      -1       1      FALSE
    203        NA      -1       1      FALSE
    204        NA      -1       1      FALSE
    205        NA      -1       1      FALSE
    206        NA      -1       1      FALSE
    207        NA      -1       1      FALSE
    208        NA      -1       1      FALSE
    209        NA      -1       1      FALSE
    210        NA      -1       1      FALSE
    211        NA      -1       1      FALSE
    212        NA      -1       1      FALSE
    213        NA      -1       1      FALSE
    214        NA      -1       1      FALSE
    215        NA      -1       1      FALSE
    216        NA      -1       1      FALSE
    217        NA      -1       1      FALSE
    218        NA      -1       1      FALSE
    219        NA      -1       1      FALSE
    220        NA      -1       1      FALSE
    221        NA      -1       1      FALSE
    222        NA      -1       1      FALSE
    223        NA      -1       1      FALSE
    224        NA      -1       1      FALSE
    225        NA      -1       1      FALSE
    226        NA      -1       1      FALSE
    227        NA      -1       1      FALSE
    228        NA      -1       1      FALSE
    229        NA      -1       1      FALSE
    230        NA      -1       1      FALSE
    231        NA      -1       1      FALSE
    232        NA       0     Inf      FALSE
    233        NA       0     Inf      FALSE
    234        NA       0     Inf      FALSE
    235        NA       0     Inf      FALSE
    236        NA       0     Inf      FALSE
    237        NA       0     Inf      FALSE
    238        NA       0     Inf      FALSE
    239        NA       0     Inf      FALSE
    240        NA       0     Inf      FALSE
    241        NA       0     Inf      FALSE
    242        NA       0     Inf      FALSE
    243        NA       0     Inf      FALSE
    244        NA       0     Inf      FALSE
    245        NA       0     Inf      FALSE
    246        NA       0     Inf      FALSE
    247        NA       0     Inf      FALSE
    248        NA       0     Inf      FALSE
    249        NA       0     Inf      FALSE
    250        NA       0     Inf      FALSE
    251        NA       0     Inf      FALSE
    252        NA       0     Inf      FALSE

``` r
knitr::include_graphics("./figures/balezina_irma-reduced-network_test.png")
```

<img src="./figures/balezina_irma-reduced-network_test.png"
width="14400" />

# Confirming the Model in the Data from Study 2

``` r
network_fit_ind_2 %>% 
  knitr::kable()
```

|                   | Measure           |         Value |
|:------------------|:------------------|--------------:|
| logl              | logl              | -2.026687e+04 |
| unrestricted.logl | unrestricted.logl | -2.001245e+04 |
| baseline.logl     | baseline.logl     | -2.235418e+04 |
| nvar              | nvar              |  2.100000e+01 |
| nobs              | nobs              |  2.520000e+02 |
| npar              | npar              |  8.700000e+01 |
| df                | df                |  1.650000e+02 |
| objective         | objective         |  3.314571e+01 |
| chisq             | chisq             |  5.088384e+02 |
| pvalue            | pvalue            |  0.000000e+00 |
| baseline.chisq    | baseline.chisq    |  4.683455e+03 |
| baseline.df       | baseline.df       |  2.100000e+02 |
| baseline.pvalue   | baseline.pvalue   |  0.000000e+00 |
| nfi               | nfi               |  8.913541e-01 |
| pnfi              | pnfi              |  7.003496e-01 |
| tli               | tli               |  9.021757e-01 |
| nnfi              | nnfi              |  9.021757e-01 |
| rfi               | rfi               |  8.617233e-01 |
| ifi               | ifi               |  9.239035e-01 |
| rni               | rni               |  9.231381e-01 |
| cfi               | cfi               |  9.231381e-01 |
| rmsea             | rmsea             |  6.073110e-02 |
| rmsea.ci.lower    | rmsea.ci.lower    |  5.477390e-02 |
| rmsea.ci.upper    | rmsea.ci.upper    |  6.676970e-02 |
| rmsea.pvalue      | rmsea.pvalue      |  1.722900e-03 |
| aic.ll            | aic.ll            |  4.070774e+04 |
| aic.ll2           | aic.ll2           |  4.073984e+04 |
| aic.x             | aic.x             |  1.788384e+02 |
| aic.x2            | aic.x2            |  6.828384e+02 |
| bic               | bic               |  4.108504e+04 |
| bic2              | bic2              |  4.080886e+04 |
| ebic.25           | ebic.25           |  4.134992e+04 |
| ebic.5            | ebic.5            |  4.161479e+04 |
| ebic.75           | ebic.75           |  4.182669e+04 |
| ebic1             | ebic1             |  4.214454e+04 |

``` r
network_pars_2
```

        var1 var1_id  op var2 var2_id         est std         se             p
    1    li2       1  ~1 <NA>      NA  4.10265487  NA 0.06707226  0.000000e+00
    2    li3       2  ~1 <NA>      NA  3.08318584  NA 0.06587093  0.000000e+00
    3    li4       3  ~1 <NA>      NA  3.39115044  NA 0.05956383  0.000000e+00
    4    fi3       4  ~1 <NA>      NA  5.87610619  NA 0.05656324  0.000000e+00
    5    fi4       5  ~1 <NA>      NA  5.37699115  NA 0.06475799  0.000000e+00
    6    fi5       6  ~1 <NA>      NA  6.28318584  NA 0.04816931  0.000000e+00
    7    de1       7  ~1 <NA>      NA  2.96814159  NA 0.07069534  0.000000e+00
    8    de2       8  ~1 <NA>      NA  2.50796460  NA 0.06534825  0.000000e+00
    9    de5       9  ~1 <NA>      NA  4.33982301  NA 0.07489806  0.000000e+00
    10   mt2      10  ~1 <NA>      NA  3.17699115  NA 0.07576202  0.000000e+00
    11   mt3      11  ~1 <NA>      NA  2.72566372  NA 0.07009579  0.000000e+00
    12   mt4      12  ~1 <NA>      NA  3.62831858  NA 0.07855617  0.000000e+00
    13   nr3      13  ~1 <NA>      NA  1.76814159  NA 0.05485679 6.297766e-228
    14   nr4      14  ~1 <NA>      NA  2.37699115  NA 0.06647768 5.293672e-280
    15   te4      15  ~1 <NA>      NA  1.74867257  NA 0.05322436 9.745994e-237
    16   sa1      16  ~1 <NA>      NA  3.42654867  NA 0.08653094  0.000000e+00
    17   sa4      17  ~1 <NA>      NA  3.25486726  NA 0.08457349  0.000000e+00
    18   sa7      18  ~1 <NA>      NA  3.76460177  NA 0.08361230  0.000000e+00
    19   wi1      19  ~1 <NA>      NA  2.55929204  NA 0.06606473  0.000000e+00
    20   wi4      20  ~1 <NA>      NA  3.16460177  NA 0.06483056  0.000000e+00
    21   wi5      21  ~1 <NA>      NA  2.79115044  NA 0.06496714  0.000000e+00
    22   li3       2  --  li2       1  0.25266596  NA 0.03326186  3.047980e-14
    23   li4       3  --  li2       1  0.21793139  NA 0.03647042  2.292939e-09
    24   fi3       4  --  li2       1  0.00000000  NA         NA            NA
    25   fi4       5  --  li2       1  0.00000000  NA         NA            NA
    26   fi5       6  --  li2       1  0.00000000  NA         NA            NA
    27   de1       7  --  li2       1  0.00000000  NA         NA            NA
    28   de2       8  --  li2       1  0.02721426  NA 0.03107342  3.811360e-01
    29   de5       9  --  li2       1  0.22239953  NA 0.03016675  1.676603e-13
    30   mt2      10  --  li2       1  0.00000000  NA         NA            NA
    31   mt3      11  --  li2       1  0.00000000  NA         NA            NA
    32   mt4      12  --  li2       1  0.00000000  NA         NA            NA
    33   nr3      13  --  li2       1  0.00000000  NA         NA            NA
    34   nr4      14  --  li2       1  0.00000000  NA         NA            NA
    35   te4      15  --  li2       1  0.00000000  NA         NA            NA
    36   sa1      16  --  li2       1  0.05043607  NA 0.02898418  8.183725e-02
    37   sa4      17  --  li2       1  0.06349568  NA 0.02965587  3.226731e-02
    38   sa7      18  --  li2       1  0.00000000  NA         NA            NA
    39   wi1      19  --  li2       1  0.00000000  NA         NA            NA
    40   wi4      20  --  li2       1  0.25996335  NA 0.02674596  2.484503e-22
    41   wi5      21  --  li2       1  0.00000000  NA         NA            NA
    42   li4       3  --  li3       2  0.19733874  NA 0.03665659  7.307362e-08
    43   fi3       4  --  li3       2  0.00000000  NA         NA            NA
    44   fi4       5  --  li3       2  0.00000000  NA         NA            NA
    45   fi5       6  --  li3       2  0.00000000  NA         NA            NA
    46   de1       7  --  li3       2  0.00000000  NA         NA            NA
    47   de2       8  --  li3       2  0.00000000  NA         NA            NA
    48   de5       9  --  li3       2  0.00000000  NA         NA            NA
    49   mt2      10  --  li3       2  0.00000000  NA         NA            NA
    50   mt3      11  --  li3       2  0.00000000  NA         NA            NA
    51   mt4      12  --  li3       2  0.00000000  NA         NA            NA
    52   nr3      13  --  li3       2  0.00000000  NA         NA            NA
    53   nr4      14  --  li3       2  0.20537842  NA 0.03016179  9.812575e-12
    54   te4      15  --  li3       2  0.00000000  NA         NA            NA
    55   sa1      16  --  li3       2  0.00000000  NA         NA            NA
    56   sa4      17  --  li3       2  0.00000000  NA         NA            NA
    57   sa7      18  --  li3       2  0.00000000  NA         NA            NA
    58   wi1      19  --  li3       2  0.29654142  NA 0.03060661  3.364436e-22
    59   wi4      20  --  li3       2  0.00000000  NA         NA            NA
    60   wi5      21  --  li3       2  0.00000000  NA         NA            NA
    61   fi3       4  --  li4       3  0.00000000  NA         NA            NA
    62   fi4       5  --  li4       3  0.00000000  NA         NA            NA
    63   fi5       6  --  li4       3  0.00000000  NA         NA            NA
    64   de1       7  --  li4       3  0.00000000  NA         NA            NA
    65   de2       8  --  li4       3  0.00000000  NA         NA            NA
    66   de5       9  --  li4       3  0.00000000  NA         NA            NA
    67   mt2      10  --  li4       3  0.00000000  NA         NA            NA
    68   mt3      11  --  li4       3  0.00000000  NA         NA            NA
    69   mt4      12  --  li4       3  0.00000000  NA         NA            NA
    70   nr3      13  --  li4       3  0.00000000  NA         NA            NA
    71   nr4      14  --  li4       3  0.00000000  NA         NA            NA
    72   te4      15  --  li4       3  0.03642209  NA 0.03397965  2.837742e-01
    73   sa1      16  --  li4       3  0.00000000  NA         NA            NA
    74   sa4      17  --  li4       3  0.00000000  NA         NA            NA
    75   sa7      18  --  li4       3  0.00000000  NA         NA            NA
    76   wi1      19  --  li4       3  0.00000000  NA         NA            NA
    77   wi4      20  --  li4       3  0.00000000  NA         NA            NA
    78   wi5      21  --  li4       3  0.04072673  NA 0.03114267  1.909592e-01
    79   fi4       5  --  fi3       4  0.06779611  NA 0.04069965  9.575995e-02
    80   fi5       6  --  fi3       4  0.27254341  NA 0.03756241  3.994462e-13
    81   de1       7  --  fi3       4  0.00000000  NA         NA            NA
    82   de2       8  --  fi3       4  0.00000000  NA         NA            NA
    83   de5       9  --  fi3       4  0.00000000  NA         NA            NA
    84   mt2      10  --  fi3       4  0.00000000  NA         NA            NA
    85   mt3      11  --  fi3       4  0.00000000  NA         NA            NA
    86   mt4      12  --  fi3       4  0.00000000  NA         NA            NA
    87   nr3      13  --  fi3       4 -0.18335509  NA 0.03074256  2.458204e-09
    88   nr4      14  --  fi3       4  0.00000000  NA         NA            NA
    89   te4      15  --  fi3       4  0.00000000  NA         NA            NA
    90   sa1      16  --  fi3       4  0.00000000  NA         NA            NA
    91   sa4      17  --  fi3       4  0.00000000  NA         NA            NA
    92   sa7      18  --  fi3       4  0.00000000  NA         NA            NA
    93   wi1      19  --  fi3       4  0.00000000  NA         NA            NA
    94   wi4      20  --  fi3       4  0.00000000  NA         NA            NA
    95   wi5      21  --  fi3       4  0.00000000  NA         NA            NA
    96   fi5       6  --  fi4       5  0.15726532  NA 0.04000443  8.452384e-05
    97   de1       7  --  fi4       5  0.00000000  NA         NA            NA
    98   de2       8  --  fi4       5  0.00000000  NA         NA            NA
    99   de5       9  --  fi4       5  0.00000000  NA         NA            NA
    100  mt2      10  --  fi4       5  0.00000000  NA         NA            NA
    101  mt3      11  --  fi4       5  0.00000000  NA         NA            NA
    102  mt4      12  --  fi4       5  0.00000000  NA         NA            NA
    103  nr3      13  --  fi4       5  0.00000000  NA         NA            NA
    104  nr4      14  --  fi4       5  0.00000000  NA         NA            NA
    105  te4      15  --  fi4       5  0.00000000  NA         NA            NA
    106  sa1      16  --  fi4       5  0.00000000  NA         NA            NA
    107  sa4      17  --  fi4       5  0.00000000  NA         NA            NA
    108  sa7      18  --  fi4       5  0.00000000  NA         NA            NA
    109  wi1      19  --  fi4       5  0.00000000  NA         NA            NA
    110  wi4      20  --  fi4       5  0.00000000  NA         NA            NA
    111  wi5      21  --  fi4       5  0.00000000  NA         NA            NA
    112  de1       7  --  fi5       6  0.00000000  NA         NA            NA
    113  de2       8  --  fi5       6  0.00000000  NA         NA            NA
    114  de5       9  --  fi5       6  0.00000000  NA         NA            NA
    115  mt2      10  --  fi5       6  0.00000000  NA         NA            NA
    116  mt3      11  --  fi5       6  0.00000000  NA         NA            NA
    117  mt4      12  --  fi5       6  0.00000000  NA         NA            NA
    118  nr3      13  --  fi5       6  0.00000000  NA         NA            NA
    119  nr4      14  --  fi5       6 -0.15946426  NA 0.02829522  1.743160e-08
    120  te4      15  --  fi5       6  0.00000000  NA         NA            NA
    121  sa1      16  --  fi5       6  0.00000000  NA         NA            NA
    122  sa4      17  --  fi5       6  0.00000000  NA         NA            NA
    123  sa7      18  --  fi5       6  0.00000000  NA         NA            NA
    124  wi1      19  --  fi5       6  0.00000000  NA         NA            NA
    125  wi4      20  --  fi5       6  0.00000000  NA         NA            NA
    126  wi5      21  --  fi5       6  0.00000000  NA         NA            NA
    127  de2       8  --  de1       7  0.23263194  NA 0.03594590  9.689090e-11
    128  de5       9  --  de1       7  0.06770974  NA 0.03643091  6.308678e-02
    129  mt2      10  --  de1       7  0.00000000  NA         NA            NA
    130  mt3      11  --  de1       7  0.00000000  NA         NA            NA
    131  mt4      12  --  de1       7  0.00000000  NA         NA            NA
    132  nr3      13  --  de1       7  0.00000000  NA         NA            NA
    133  nr4      14  --  de1       7  0.23275108  NA 0.03041738  1.980136e-14
    134  te4      15  --  de1       7  0.00000000  NA         NA            NA
    135  sa1      16  --  de1       7  0.00000000  NA         NA            NA
    136  sa4      17  --  de1       7  0.00000000  NA         NA            NA
    137  sa7      18  --  de1       7  0.20476313  NA 0.03006634  9.734261e-12
    138  wi1      19  --  de1       7  0.00000000  NA         NA            NA
    139  wi4      20  --  de1       7  0.00000000  NA         NA            NA
    140  wi5      21  --  de1       7  0.00000000  NA         NA            NA
    141  de5       9  --  de2       8  0.26227447  NA 0.03888183  1.525799e-11
    142  mt2      10  --  de2       8  0.00000000  NA         NA            NA
    143  mt3      11  --  de2       8  0.00000000  NA         NA            NA
    144  mt4      12  --  de2       8  0.06733883  NA 0.03100174  2.984825e-02
    145  nr3      13  --  de2       8  0.00000000  NA         NA            NA
    146  nr4      14  --  de2       8  0.00000000  NA         NA            NA
    147  te4      15  --  de2       8  0.00000000  NA         NA            NA
    148  sa1      16  --  de2       8  0.00000000  NA         NA            NA
    149  sa4      17  --  de2       8  0.00000000  NA         NA            NA
    150  sa7      18  --  de2       8  0.00000000  NA         NA            NA
    151  wi1      19  --  de2       8  0.00000000  NA         NA            NA
    152  wi4      20  --  de2       8  0.00000000  NA         NA            NA
    153  wi5      21  --  de2       8  0.00000000  NA         NA            NA
    154  mt2      10  --  de5       9  0.00000000  NA         NA            NA
    155  mt3      11  --  de5       9  0.00000000  NA         NA            NA
    156  mt4      12  --  de5       9  0.00000000  NA         NA            NA
    157  nr3      13  --  de5       9  0.00000000  NA         NA            NA
    158  nr4      14  --  de5       9  0.00000000  NA         NA            NA
    159  te4      15  --  de5       9  0.00000000  NA         NA            NA
    160  sa1      16  --  de5       9  0.00000000  NA         NA            NA
    161  sa4      17  --  de5       9  0.00000000  NA         NA            NA
    162  sa7      18  --  de5       9  0.00000000  NA         NA            NA
    163  wi1      19  --  de5       9  0.00000000  NA         NA            NA
    164  wi4      20  --  de5       9  0.00000000  NA         NA            NA
    165  wi5      21  --  de5       9  0.00000000  NA         NA            NA
    166  mt3      11  --  mt2      10  0.00000000  NA         NA            NA
    167  mt4      12  --  mt2      10  0.38720076  NA 0.03188362  6.158960e-34
    168  nr3      13  --  mt2      10  0.00000000  NA         NA            NA
    169  nr4      14  --  mt2      10  0.00000000  NA         NA            NA
    170  te4      15  --  mt2      10  0.00000000  NA         NA            NA
    171  sa1      16  --  mt2      10  0.00000000  NA         NA            NA
    172  sa4      17  --  mt2      10  0.12862588  NA 0.02992609  1.722538e-05
    173  sa7      18  --  mt2      10  0.00000000  NA         NA            NA
    174  wi1      19  --  mt2      10  0.00000000  NA         NA            NA
    175  wi4      20  --  mt2      10  0.09619996  NA 0.02337687  3.868810e-05
    176  wi5      21  --  mt2      10  0.00000000  NA         NA            NA
    177  mt4      12  --  mt3      11  0.36918464  NA 0.03186822  4.925369e-31
    178  nr3      13  --  mt3      11  0.09958266  NA 0.03057302  1.125145e-03
    179  nr4      14  --  mt3      11  0.00000000  NA         NA            NA
    180  te4      15  --  mt3      11  0.00000000  NA         NA            NA
    181  sa1      16  --  mt3      11  0.00000000  NA         NA            NA
    182  sa4      17  --  mt3      11  0.00000000  NA         NA            NA
    183  sa7      18  --  mt3      11  0.00000000  NA         NA            NA
    184  wi1      19  --  mt3      11  0.01531493  NA 0.02634630  5.610427e-01
    185  wi4      20  --  mt3      11  0.00000000  NA         NA            NA
    186  wi5      21  --  mt3      11  0.00000000  NA         NA            NA
    187  nr3      13  --  mt4      12  0.00000000  NA         NA            NA
    188  nr4      14  --  mt4      12  0.00000000  NA         NA            NA
    189  te4      15  --  mt4      12  0.00000000  NA         NA            NA
    190  sa1      16  --  mt4      12  0.13577545  NA 0.03197024  2.167180e-05
    191  sa4      17  --  mt4      12  0.00000000  NA         NA            NA
    192  sa7      18  --  mt4      12  0.04423164  NA 0.03151374  1.604479e-01
    193  wi1      19  --  mt4      12  0.00000000  NA         NA            NA
    194  wi4      20  --  mt4      12  0.00000000  NA         NA            NA
    195  wi5      21  --  mt4      12  0.00000000  NA         NA            NA
    196  nr4      14  --  nr3      13  0.23698702  NA 0.03261096  3.672948e-13
    197  te4      15  --  nr3      13  0.36961377  NA 0.03418122  2.975695e-27
    198  sa1      16  --  nr3      13  0.00000000  NA         NA            NA
    199  sa4      17  --  nr3      13  0.15181864  NA 0.02801744  6.002737e-08
    200  sa7      18  --  nr3      13  0.00000000  NA         NA            NA
    201  wi1      19  --  nr3      13  0.00000000  NA         NA            NA
    202  wi4      20  --  nr3      13  0.00000000  NA         NA            NA
    203  wi5      21  --  nr3      13  0.00000000  NA         NA            NA
    204  te4      15  --  nr4      14  0.14198885  NA 0.03465965  4.191512e-05
    205  sa1      16  --  nr4      14  0.23643053  NA 0.02904876  3.982489e-16
    206  sa4      17  --  nr4      14  0.00000000  NA         NA            NA
    207  sa7      18  --  nr4      14  0.00000000  NA         NA            NA
    208  wi1      19  --  nr4      14  0.05531677  NA 0.02825807  5.028212e-02
    209  wi4      20  --  nr4      14  0.00000000  NA         NA            NA
    210  wi5      21  --  nr4      14  0.00000000  NA         NA            NA
    211  sa1      16  --  te4      15  0.00000000  NA         NA            NA
    212  sa4      17  --  te4      15  0.00000000  NA         NA            NA
    213  sa7      18  --  te4      15  0.00000000  NA         NA            NA
    214  wi1      19  --  te4      15  0.00000000  NA         NA            NA
    215  wi4      20  --  te4      15  0.10352672  NA 0.02423359  1.936978e-05
    216  wi5      21  --  te4      15  0.00000000  NA         NA            NA
    217  sa4      17  --  sa1      16  0.21729839  NA 0.03623752  2.016125e-09
    218  sa7      18  --  sa1      16  0.32077494  NA 0.03486038  3.523174e-20
    219  wi1      19  --  sa1      16  0.00000000  NA         NA            NA
    220  wi4      20  --  sa1      16  0.00000000  NA         NA            NA
    221  wi5      21  --  sa1      16  0.00000000  NA         NA            NA
    222  sa7      18  --  sa4      17  0.38995497  NA 0.03284711  1.658196e-32
    223  wi1      19  --  sa4      17  0.00000000  NA         NA            NA
    224  wi4      20  --  sa4      17  0.00000000  NA         NA            NA
    225  wi5      21  --  sa4      17  0.11244533  NA 0.02524384  8.414128e-06
    226  wi1      19  --  sa7      18  0.00000000  NA         NA            NA
    227  wi4      20  --  sa7      18  0.00000000  NA         NA            NA
    228  wi5      21  --  sa7      18  0.00000000  NA         NA            NA
    229  wi4      20  --  wi1      19  0.35930827  NA 0.03232641  1.060416e-28
    230  wi5      21  --  wi1      19  0.16819325  NA 0.03777385  8.482206e-06
    231  wi5      21  --  wi4      20  0.47997574  NA 0.02997282  1.025238e-57
    232  li2       1 ~/~  li2       1  1.10328551  NA 0.03127438 1.294789e-272
    233  li3       2 ~/~  li3       2  1.09963477  NA 0.03191004 3.139383e-260
    234  li4       3 ~/~  li4       3  1.22471959  NA 0.03641516 5.689105e-248
    235  fi3       4 ~/~  fi3       4  1.23008013  NA 0.03645183 1.250400e-249
    236  fi4       5 ~/~  fi4       5  1.50650918  NA 0.04481595 9.968621e-248
    237  fi5       6 ~/~  fi5       6  1.03971093  NA 0.03079490 7.021700e-250
    238  de1       7 ~/~  de1       7  1.39182063  NA 0.04065277 6.856826e-257
    239  de2       8 ~/~  de2       8  1.39257770  NA 0.04137948 2.741501e-248
    240  de5       9 ~/~  de5       9  1.58326635  NA 0.04708043 6.329025e-248
    241  mt2      10 ~/~  mt2      10  1.49815586  NA 0.04413099 1.308693e-252
    242  mt3      11 ~/~  mt3      11  1.47081226  NA 0.04363277 4.283177e-249
    243  mt4      12 ~/~  mt4      12  1.43890222  NA 0.04108455 1.006611e-268
    244  nr3      13 ~/~  nr3      13  0.96796360  NA 0.02799673 6.178450e-262
    245  nr4      14 ~/~  nr4      14  1.08431779  NA 0.02998091 2.015473e-286
    246  te4      15 ~/~  te4      15  1.01904197  NA 0.03012120 6.816283e-251
    247  sa1      16 ~/~  sa1      16  1.42352707  NA 0.04122211 2.557006e-261
    248  sa4      17 ~/~  sa4      17  1.36194525  NA 0.03910029 7.948590e-266
    249  sa7      18 ~/~  sa7      18  1.35620109  NA 0.03956517 1.689717e-257
    250  wi1      19 ~/~  wi1      19  1.01772541  NA 0.02914809 4.298161e-267
    251  wi4      20 ~/~  wi4      20  0.86002145  NA 0.02410166 7.234097e-279
    252  wi5      21 ~/~  wi5      21  1.01144329  NA 0.02980583 2.071730e-252
        se_boot p_boot matrix row col par      group group_id fixed           mi
    1        NA     NA     mu   1   1   1 fullsample        1 FALSE 0.000000e+00
    2        NA     NA     mu   2   1   2 fullsample        1 FALSE 0.000000e+00
    3        NA     NA     mu   3   1   3 fullsample        1 FALSE 0.000000e+00
    4        NA     NA     mu   4   1   4 fullsample        1 FALSE 0.000000e+00
    5        NA     NA     mu   5   1   5 fullsample        1 FALSE 0.000000e+00
    6        NA     NA     mu   6   1   6 fullsample        1 FALSE 0.000000e+00
    7        NA     NA     mu   7   1   7 fullsample        1 FALSE 0.000000e+00
    8        NA     NA     mu   8   1   8 fullsample        1 FALSE 0.000000e+00
    9        NA     NA     mu   9   1   9 fullsample        1 FALSE 0.000000e+00
    10       NA     NA     mu  10   1  10 fullsample        1 FALSE 0.000000e+00
    11       NA     NA     mu  11   1  11 fullsample        1 FALSE 0.000000e+00
    12       NA     NA     mu  12   1  12 fullsample        1 FALSE 0.000000e+00
    13       NA     NA     mu  13   1  13 fullsample        1 FALSE 0.000000e+00
    14       NA     NA     mu  14   1  14 fullsample        1 FALSE 0.000000e+00
    15       NA     NA     mu  15   1  15 fullsample        1 FALSE 0.000000e+00
    16       NA     NA     mu  16   1  16 fullsample        1 FALSE 0.000000e+00
    17       NA     NA     mu  17   1  17 fullsample        1 FALSE 0.000000e+00
    18       NA     NA     mu  18   1  18 fullsample        1 FALSE 0.000000e+00
    19       NA     NA     mu  19   1  19 fullsample        1 FALSE 0.000000e+00
    20       NA     NA     mu  20   1  20 fullsample        1 FALSE 0.000000e+00
    21       NA     NA     mu  21   1  21 fullsample        1 FALSE 0.000000e+00
    22       NA     NA  omega   2   1  22 fullsample        1 FALSE 2.546000e-07
    23       NA     NA  omega   3   1  23 fullsample        1 FALSE 1.042000e-07
    24       NA     NA  omega   4   1   0 fullsample        1  TRUE 3.385301e-01
    25       NA     NA  omega   5   1   0 fullsample        1  TRUE 5.236251e-02
    26       NA     NA  omega   6   1   0 fullsample        1  TRUE 3.397051e+00
    27       NA     NA  omega   7   1   0 fullsample        1  TRUE 1.205421e+01
    28       NA     NA  omega   8   1  24 fullsample        1 FALSE 3.960000e-08
    29       NA     NA  omega   9   1  25 fullsample        1 FALSE 7.790000e-08
    30       NA     NA  omega  10   1   0 fullsample        1  TRUE 7.034103e-01
    31       NA     NA  omega  11   1   0 fullsample        1  TRUE 9.939290e+00
    32       NA     NA  omega  12   1   0 fullsample        1  TRUE 8.144307e-01
    33       NA     NA  omega  13   1   0 fullsample        1  TRUE 2.689817e-02
    34       NA     NA  omega  14   1   0 fullsample        1  TRUE 3.227059e+00
    35       NA     NA  omega  15   1   0 fullsample        1  TRUE 5.984637e+00
    36       NA     NA  omega  16   1  26 fullsample        1 FALSE 2.643000e-07
    37       NA     NA  omega  17   1  27 fullsample        1 FALSE 1.412000e-07
    38       NA     NA  omega  18   1   0 fullsample        1  TRUE 7.006689e+00
    39       NA     NA  omega  19   1   0 fullsample        1  TRUE 1.602693e-01
    40       NA     NA  omega  20   1  28 fullsample        1 FALSE 2.040000e-07
    41       NA     NA  omega  21   1   0 fullsample        1  TRUE 2.310112e+00
    42       NA     NA  omega   3   2  29 fullsample        1 FALSE 4.480000e-08
    43       NA     NA  omega   4   2   0 fullsample        1  TRUE 2.003108e+00
    44       NA     NA  omega   5   2   0 fullsample        1  TRUE 9.305801e+00
    45       NA     NA  omega   6   2   0 fullsample        1  TRUE 1.588503e+01
    46       NA     NA  omega   7   2   0 fullsample        1  TRUE 1.141168e+01
    47       NA     NA  omega   8   2   0 fullsample        1  TRUE 6.413378e+00
    48       NA     NA  omega   9   2   0 fullsample        1  TRUE 3.296013e-01
    49       NA     NA  omega  10   2   0 fullsample        1  TRUE 1.328573e+00
    50       NA     NA  omega  11   2   0 fullsample        1  TRUE 3.057091e-01
    51       NA     NA  omega  12   2   0 fullsample        1  TRUE 6.862871e-01
    52       NA     NA  omega  13   2   0 fullsample        1  TRUE 6.053388e+00
    53       NA     NA  omega  14   2  30 fullsample        1 FALSE 1.912000e-07
    54       NA     NA  omega  15   2   0 fullsample        1  TRUE 8.955450e+00
    55       NA     NA  omega  16   2   0 fullsample        1  TRUE 2.057737e+01
    56       NA     NA  omega  17   2   0 fullsample        1  TRUE 1.980408e+01
    57       NA     NA  omega  18   2   0 fullsample        1  TRUE 1.633431e+01
    58       NA     NA  omega  19   2  31 fullsample        1 FALSE 7.130000e-08
    59       NA     NA  omega  20   2   0 fullsample        1  TRUE 4.964330e+00
    60       NA     NA  omega  21   2   0 fullsample        1  TRUE 2.632579e+00
    61       NA     NA  omega   4   3   0 fullsample        1  TRUE 1.029067e-01
    62       NA     NA  omega   5   3   0 fullsample        1  TRUE 5.994251e-01
    63       NA     NA  omega   6   3   0 fullsample        1  TRUE 5.368152e+00
    64       NA     NA  omega   7   3   0 fullsample        1  TRUE 8.779485e-01
    65       NA     NA  omega   8   3   0 fullsample        1  TRUE 4.401443e+00
    66       NA     NA  omega   9   3   0 fullsample        1  TRUE 1.572285e-01
    67       NA     NA  omega  10   3   0 fullsample        1  TRUE 4.468872e+00
    68       NA     NA  omega  11   3   0 fullsample        1  TRUE 4.998341e+00
    69       NA     NA  omega  12   3   0 fullsample        1  TRUE 1.018981e+00
    70       NA     NA  omega  13   3   0 fullsample        1  TRUE 9.834527e-02
    71       NA     NA  omega  14   3   0 fullsample        1  TRUE 1.454242e+00
    72       NA     NA  omega  15   3  32 fullsample        1 FALSE 4.000000e-10
    73       NA     NA  omega  16   3   0 fullsample        1  TRUE 5.514501e-01
    74       NA     NA  omega  17   3   0 fullsample        1  TRUE 1.033953e-01
    75       NA     NA  omega  18   3   0 fullsample        1  TRUE 8.121746e-01
    76       NA     NA  omega  19   3   0 fullsample        1  TRUE 7.372153e-02
    77       NA     NA  omega  20   3   0 fullsample        1  TRUE 4.373751e-01
    78       NA     NA  omega  21   3  33 fullsample        1 FALSE 1.870000e-08
    79       NA     NA  omega   5   4  34 fullsample        1 FALSE 1.000000e-10
    80       NA     NA  omega   6   4  35 fullsample        1 FALSE 1.400000e-09
    81       NA     NA  omega   7   4   0 fullsample        1  TRUE 3.431558e+00
    82       NA     NA  omega   8   4   0 fullsample        1  TRUE 1.932117e+01
    83       NA     NA  omega   9   4   0 fullsample        1  TRUE 1.201773e+00
    84       NA     NA  omega  10   4   0 fullsample        1  TRUE 4.944793e-01
    85       NA     NA  omega  11   4   0 fullsample        1  TRUE 1.192288e-02
    86       NA     NA  omega  12   4   0 fullsample        1  TRUE 2.092458e+00
    87       NA     NA  omega  13   4  36 fullsample        1 FALSE 4.300000e-09
    88       NA     NA  omega  14   4   0 fullsample        1  TRUE 2.271292e-01
    89       NA     NA  omega  15   4   0 fullsample        1  TRUE 6.508411e+00
    90       NA     NA  omega  16   4   0 fullsample        1  TRUE 1.652695e+00
    91       NA     NA  omega  17   4   0 fullsample        1  TRUE 7.429375e-04
    92       NA     NA  omega  18   4   0 fullsample        1  TRUE 1.200858e-01
    93       NA     NA  omega  19   4   0 fullsample        1  TRUE 5.543796e+00
    94       NA     NA  omega  20   4   0 fullsample        1  TRUE 3.977999e+00
    95       NA     NA  omega  21   4   0 fullsample        1  TRUE 7.292174e+00
    96       NA     NA  omega   6   5  37 fullsample        1 FALSE 1.000000e-10
    97       NA     NA  omega   7   5   0 fullsample        1  TRUE 3.869824e-01
    98       NA     NA  omega   8   5   0 fullsample        1  TRUE 1.362493e+00
    99       NA     NA  omega   9   5   0 fullsample        1  TRUE 6.242441e+00
    100      NA     NA  omega  10   5   0 fullsample        1  TRUE 4.767309e+00
    101      NA     NA  omega  11   5   0 fullsample        1  TRUE 1.273703e+01
    102      NA     NA  omega  12   5   0 fullsample        1  TRUE 1.221996e+01
    103      NA     NA  omega  13   5   0 fullsample        1  TRUE 9.516277e-02
    104      NA     NA  omega  14   5   0 fullsample        1  TRUE 6.595690e-01
    105      NA     NA  omega  15   5   0 fullsample        1  TRUE 1.355862e+00
    106      NA     NA  omega  16   5   0 fullsample        1  TRUE 1.833726e+00
    107      NA     NA  omega  17   5   0 fullsample        1  TRUE 8.175290e-01
    108      NA     NA  omega  18   5   0 fullsample        1  TRUE 1.722245e+00
    109      NA     NA  omega  19   5   0 fullsample        1  TRUE 1.988200e-06
    110      NA     NA  omega  20   5   0 fullsample        1  TRUE 9.674682e-03
    111      NA     NA  omega  21   5   0 fullsample        1  TRUE 4.217572e-01
    112      NA     NA  omega   7   6   0 fullsample        1  TRUE 1.163831e+00
    113      NA     NA  omega   8   6   0 fullsample        1  TRUE 1.023569e+01
    114      NA     NA  omega   9   6   0 fullsample        1  TRUE 2.104389e+00
    115      NA     NA  omega  10   6   0 fullsample        1  TRUE 4.952254e-01
    116      NA     NA  omega  11   6   0 fullsample        1  TRUE 1.635740e-01
    117      NA     NA  omega  12   6   0 fullsample        1  TRUE 7.588773e-01
    118      NA     NA  omega  13   6   0 fullsample        1  TRUE 1.351203e+01
    119      NA     NA  omega  14   6  38 fullsample        1 FALSE 3.920000e-08
    120      NA     NA  omega  15   6   0 fullsample        1  TRUE 2.058905e+01
    121      NA     NA  omega  16   6   0 fullsample        1  TRUE 4.172056e+00
    122      NA     NA  omega  17   6   0 fullsample        1  TRUE 1.364165e+00
    123      NA     NA  omega  18   6   0 fullsample        1  TRUE 2.228319e+00
    124      NA     NA  omega  19   6   0 fullsample        1  TRUE 1.828729e+01
    125      NA     NA  omega  20   6   0 fullsample        1  TRUE 1.087485e+01
    126      NA     NA  omega  21   6   0 fullsample        1  TRUE 2.297120e+01
    127      NA     NA  omega   8   7  39 fullsample        1 FALSE 3.000000e-09
    128      NA     NA  omega   9   7  40 fullsample        1 FALSE 1.690000e-08
    129      NA     NA  omega  10   7   0 fullsample        1  TRUE 4.400571e-01
    130      NA     NA  omega  11   7   0 fullsample        1  TRUE 1.943341e-01
    131      NA     NA  omega  12   7   0 fullsample        1  TRUE 1.744719e+00
    132      NA     NA  omega  13   7   0 fullsample        1  TRUE 3.482415e+00
    133      NA     NA  omega  14   7  41 fullsample        1 FALSE 5.870000e-08
    134      NA     NA  omega  15   7   0 fullsample        1  TRUE 1.080205e+01
    135      NA     NA  omega  16   7   0 fullsample        1  TRUE 1.056198e+01
    136      NA     NA  omega  17   7   0 fullsample        1  TRUE 1.053119e+01
    137      NA     NA  omega  18   7  42 fullsample        1 FALSE 1.720000e-08
    138      NA     NA  omega  19   7   0 fullsample        1  TRUE 1.229918e+01
    139      NA     NA  omega  20   7   0 fullsample        1  TRUE 1.523368e+01
    140      NA     NA  omega  21   7   0 fullsample        1  TRUE 1.279108e+01
    141      NA     NA  omega   9   8  43 fullsample        1 FALSE 3.000000e-09
    142      NA     NA  omega  10   8   0 fullsample        1  TRUE 3.716679e+00
    143      NA     NA  omega  11   8   0 fullsample        1  TRUE 8.520187e+00
    144      NA     NA  omega  12   8  44 fullsample        1 FALSE 1.000000e-08
    145      NA     NA  omega  13   8   0 fullsample        1  TRUE 2.371341e+01
    146      NA     NA  omega  14   8   0 fullsample        1  TRUE 2.270233e+00
    147      NA     NA  omega  15   8   0 fullsample        1  TRUE 8.773405e+00
    148      NA     NA  omega  16   8   0 fullsample        1  TRUE 2.327562e+00
    149      NA     NA  omega  17   8   0 fullsample        1  TRUE 4.838774e+00
    150      NA     NA  omega  18   8   0 fullsample        1  TRUE 7.573046e-02
    151      NA     NA  omega  19   8   0 fullsample        1  TRUE 3.634199e+00
    152      NA     NA  omega  20   8   0 fullsample        1  TRUE 1.196967e+00
    153      NA     NA  omega  21   8   0 fullsample        1  TRUE 1.095145e+01
    154      NA     NA  omega  10   9   0 fullsample        1  TRUE 4.264622e+00
    155      NA     NA  omega  11   9   0 fullsample        1  TRUE 2.857852e+00
    156      NA     NA  omega  12   9   0 fullsample        1  TRUE 2.681019e+01
    157      NA     NA  omega  13   9   0 fullsample        1  TRUE 1.013015e-02
    158      NA     NA  omega  14   9   0 fullsample        1  TRUE 2.521534e-01
    159      NA     NA  omega  15   9   0 fullsample        1  TRUE 2.995904e-01
    160      NA     NA  omega  16   9   0 fullsample        1  TRUE 1.653293e+00
    161      NA     NA  omega  17   9   0 fullsample        1  TRUE 1.990353e-01
    162      NA     NA  omega  18   9   0 fullsample        1  TRUE 2.802382e+00
    163      NA     NA  omega  19   9   0 fullsample        1  TRUE 3.475747e-01
    164      NA     NA  omega  20   9   0 fullsample        1  TRUE 4.326325e-03
    165      NA     NA  omega  21   9   0 fullsample        1  TRUE 3.029243e+00
    166      NA     NA  omega  11  10   0 fullsample        1  TRUE 1.180871e+01
    167      NA     NA  omega  12  10  45 fullsample        1 FALSE 2.200000e-08
    168      NA     NA  omega  13  10   0 fullsample        1  TRUE 5.460175e+00
    169      NA     NA  omega  14  10   0 fullsample        1  TRUE 6.074487e-01
    170      NA     NA  omega  15  10   0 fullsample        1  TRUE 1.214433e+01
    171      NA     NA  omega  16  10   0 fullsample        1  TRUE 1.576102e+00
    172      NA     NA  omega  17  10  46 fullsample        1 FALSE 3.230000e-08
    173      NA     NA  omega  18  10   0 fullsample        1  TRUE 1.449784e+00
    174      NA     NA  omega  19  10   0 fullsample        1  TRUE 2.366286e+00
    175      NA     NA  omega  20  10  47 fullsample        1 FALSE 5.330000e-08
    176      NA     NA  omega  21  10   0 fullsample        1  TRUE 1.005586e+00
    177      NA     NA  omega  12  11  48 fullsample        1 FALSE 1.870000e-08
    178      NA     NA  omega  13  11  49 fullsample        1 FALSE 3.170000e-08
    179      NA     NA  omega  14  11   0 fullsample        1  TRUE 5.034940e+00
    180      NA     NA  omega  15  11   0 fullsample        1  TRUE 2.797791e+00
    181      NA     NA  omega  16  11   0 fullsample        1  TRUE 3.400420e-01
    182      NA     NA  omega  17  11   0 fullsample        1  TRUE 9.273914e-03
    183      NA     NA  omega  18  11   0 fullsample        1  TRUE 2.679115e-01
    184      NA     NA  omega  19  11  50 fullsample        1 FALSE 6.190000e-08
    185      NA     NA  omega  20  11   0 fullsample        1  TRUE 6.847603e+00
    186      NA     NA  omega  21  11   0 fullsample        1  TRUE 3.949779e-01
    187      NA     NA  omega  13  12   0 fullsample        1  TRUE 2.007476e-01
    188      NA     NA  omega  14  12   0 fullsample        1  TRUE 4.401571e-01
    189      NA     NA  omega  15  12   0 fullsample        1  TRUE 3.942139e+00
    190      NA     NA  omega  16  12  51 fullsample        1 FALSE 6.830000e-08
    191      NA     NA  omega  17  12   0 fullsample        1  TRUE 2.677905e+00
    192      NA     NA  omega  18  12  52 fullsample        1 FALSE 3.040000e-08
    193      NA     NA  omega  19  12   0 fullsample        1  TRUE 1.380783e+00
    194      NA     NA  omega  20  12   0 fullsample        1  TRUE 8.285865e-02
    195      NA     NA  omega  21  12   0 fullsample        1  TRUE 1.135784e-01
    196      NA     NA  omega  14  13  53 fullsample        1 FALSE 1.048000e-07
    197      NA     NA  omega  15  13  54 fullsample        1 FALSE 5.000000e-09
    198      NA     NA  omega  16  13   0 fullsample        1  TRUE 1.640507e+00
    199      NA     NA  omega  17  13  55 fullsample        1 FALSE 1.440000e-08
    200      NA     NA  omega  18  13   0 fullsample        1  TRUE 5.003800e-02
    201      NA     NA  omega  19  13   0 fullsample        1  TRUE 1.605864e+01
    202      NA     NA  omega  20  13   0 fullsample        1  TRUE 2.988903e+00
    203      NA     NA  omega  21  13   0 fullsample        1  TRUE 6.780523e+00
    204      NA     NA  omega  15  14  56 fullsample        1 FALSE 7.280000e-08
    205      NA     NA  omega  16  14  57 fullsample        1 FALSE 2.661000e-07
    206      NA     NA  omega  17  14   0 fullsample        1  TRUE 1.217352e+01
    207      NA     NA  omega  18  14   0 fullsample        1  TRUE 2.156212e+01
    208      NA     NA  omega  19  14  58 fullsample        1 FALSE 1.774000e-07
    209      NA     NA  omega  20  14   0 fullsample        1  TRUE 2.561737e-02
    210      NA     NA  omega  21  14   0 fullsample        1  TRUE 3.820548e-01
    211      NA     NA  omega  16  15   0 fullsample        1  TRUE 1.099554e+01
    212      NA     NA  omega  17  15   0 fullsample        1  TRUE 1.341497e+00
    213      NA     NA  omega  18  15   0 fullsample        1  TRUE 1.071863e+00
    214      NA     NA  omega  19  15   0 fullsample        1  TRUE 6.525686e+00
    215      NA     NA  omega  20  15  59 fullsample        1 FALSE 2.700000e-09
    216      NA     NA  omega  21  15   0 fullsample        1  TRUE 1.149484e+01
    217      NA     NA  omega  17  16  60 fullsample        1 FALSE 3.910000e-08
    218      NA     NA  omega  18  16  61 fullsample        1 FALSE 2.880000e-08
    219      NA     NA  omega  19  16   0 fullsample        1  TRUE 1.403744e+01
    220      NA     NA  omega  20  16   0 fullsample        1  TRUE 6.042952e+00
    221      NA     NA  omega  21  16   0 fullsample        1  TRUE 2.847339e+00
    222      NA     NA  omega  18  17  62 fullsample        1 FALSE 1.590000e-08
    223      NA     NA  omega  19  17   0 fullsample        1  TRUE 1.848680e+00
    224      NA     NA  omega  20  17   0 fullsample        1  TRUE 3.206561e-01
    225      NA     NA  omega  21  17  63 fullsample        1 FALSE 1.500000e-09
    226      NA     NA  omega  19  18   0 fullsample        1  TRUE 8.201658e+00
    227      NA     NA  omega  20  18   0 fullsample        1  TRUE 1.194217e+01
    228      NA     NA  omega  21  18   0 fullsample        1  TRUE 6.055211e+00
    229      NA     NA  omega  20  19  64 fullsample        1 FALSE 1.230000e-08
    230      NA     NA  omega  21  19  65 fullsample        1 FALSE 1.390000e-08
    231      NA     NA  omega  21  20  66 fullsample        1 FALSE 1.640000e-08
    232      NA     NA  delta   1   1  67 fullsample        1 FALSE 1.327000e-07
    233      NA     NA  delta   2   2  68 fullsample        1 FALSE 2.000000e-09
    234      NA     NA  delta   3   3  69 fullsample        1 FALSE 4.000000e-10
    235      NA     NA  delta   4   4  70 fullsample        1 FALSE 0.000000e+00
    236      NA     NA  delta   5   5  71 fullsample        1 FALSE 0.000000e+00
    237      NA     NA  delta   6   6  72 fullsample        1 FALSE 0.000000e+00
    238      NA     NA  delta   7   7  73 fullsample        1 FALSE 1.300000e-09
    239      NA     NA  delta   8   8  74 fullsample        1 FALSE 0.000000e+00
    240      NA     NA  delta   9   9  75 fullsample        1 FALSE 1.000000e-10
    241      NA     NA  delta  10  10  76 fullsample        1 FALSE 1.500000e-09
    242      NA     NA  delta  11  11  77 fullsample        1 FALSE 1.100000e-09
    243      NA     NA  delta  12  12  78 fullsample        1 FALSE 0.000000e+00
    244      NA     NA  delta  13  13  79 fullsample        1 FALSE 0.000000e+00
    245      NA     NA  delta  14  14  80 fullsample        1 FALSE 1.246000e-07
    246      NA     NA  delta  15  15  81 fullsample        1 FALSE 7.300000e-09
    247      NA     NA  delta  16  16  82 fullsample        1 FALSE 1.800000e-09
    248      NA     NA  delta  17  17  83 fullsample        1 FALSE 1.500000e-09
    249      NA     NA  delta  18  18  84 fullsample        1 FALSE 2.000000e-10
    250      NA     NA  delta  19  19  85 fullsample        1 FALSE 1.900000e-09
    251      NA     NA  delta  20  20  86 fullsample        1 FALSE 2.300000e-09
    252      NA     NA  delta  21  21  87 fullsample        1 FALSE 0.000000e+00
                 pmi           epc mi_free pmi_free epc_free mi_equal pmi_equal
    1   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    2   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    3   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    4   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    5   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    6   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    7   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    8   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    9   1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    10  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    11  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    12  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    13  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    14  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    15  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    16  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    17  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    18  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    19  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    20  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    21  1.0000000000  0.0000000000      NA       NA       NA       NA        NA
    22  0.9995973649 -0.0000089578      NA       NA       NA       NA        NA
    23  0.9997424438 -0.0000074189      NA       NA       NA       NA        NA
    24  0.5606789263 -0.0165318678      NA       NA       NA       NA        NA
    25  0.8190021608 -0.0065986973      NA       NA       NA       NA        NA
    26  0.0653131069 -0.0540171045      NA       NA       NA       NA        NA
    27  0.0005167551  0.1097908055      NA       NA       NA       NA        NA
    28  0.9998411726 -0.0000050850      NA       NA       NA       NA        NA
    29  0.9997772386 -0.0000068040      NA       NA       NA       NA        NA
    30  0.4016401456  0.0279623142      NA       NA       NA       NA        NA
    31  0.0016178791 -0.0986283510      NA       NA       NA       NA        NA
    32  0.3668135357  0.0249450939      NA       NA       NA       NA        NA
    33  0.8697259367  0.0046820711      NA       NA       NA       NA        NA
    34  0.0724306605  0.0577704103      NA       NA       NA       NA        NA
    35  0.0144310115 -0.0838992776      NA       NA       NA       NA        NA
    36  0.9995898449 -0.0000097734      NA       NA       NA       NA        NA
    37  0.9997001534 -0.0000069402      NA       NA       NA       NA        NA
    38  0.0081205714  0.0828916921      NA       NA       NA       NA        NA
    39  0.6889086553 -0.0147549975      NA       NA       NA       NA        NA
    40  0.9996396082 -0.0000063039      NA       NA       NA       NA        NA
    41  0.1285347523 -0.0565709680      NA       NA       NA       NA        NA
    42  0.9998311018 -0.0000049630      NA       NA       NA       NA        NA
    43  0.1569770869 -0.0414914334      NA       NA       NA       NA        NA
    44  0.0022842946 -0.0897562220      NA       NA       NA       NA        NA
    45  0.0000673092 -0.1269005401      NA       NA       NA       NA        NA
    46  0.0007298386  0.1078028595      NA       NA       NA       NA        NA
    47  0.0113263727  0.0854380439      NA       NA       NA       NA        NA
    48  0.5658939678  0.0199169079      NA       NA       NA       NA        NA
    49  0.2490591808  0.0353988844      NA       NA       NA       NA        NA
    50  0.5803252862 -0.0185734487      NA       NA       NA       NA        NA
    51  0.4074301650  0.0221868275      NA       NA       NA       NA        NA
    52  0.0138796392  0.0752477015      NA       NA       NA       NA        NA
    53  0.9996511311 -0.0000079869      NA       NA       NA       NA        NA
    54  0.0027664304  0.1039144064      NA       NA       NA       NA        NA
    55  0.0000057269  0.1410570836      NA       NA       NA       NA        NA
    56  0.0000085800  0.1306006446      NA       NA       NA       NA        NA
    57  0.0000530938  0.1050057651      NA       NA       NA       NA        NA
    58  0.9997868834 -0.0000044064      NA       NA       NA       NA        NA
    59  0.0258753428  0.0728031351      NA       NA       NA       NA        NA
    60  0.1046915089  0.0538125122      NA       NA       NA       NA        NA
    61  0.7483689644 -0.0110939448      NA       NA       NA       NA        NA
    62  0.4387974420  0.0277376316      NA       NA       NA       NA        NA
    63  0.0205076920 -0.0807825205      NA       NA       NA       NA        NA
    64  0.3487641742  0.0315905927      NA       NA       NA       NA        NA
    65  0.0359085375  0.0786333495      NA       NA       NA       NA        NA
    66  0.6917210696 -0.0154017700      NA       NA       NA       NA        NA
    67  0.0345177728  0.0718518834      NA       NA       NA       NA        NA
    68  0.0253716302  0.0779151201      NA       NA       NA       NA        NA
    69  0.3127608645  0.0307111348      NA       NA       NA       NA        NA
    70  0.7538244825  0.0108717631      NA       NA       NA       NA        NA
    71  0.2278484587  0.0414102127      NA       NA       NA       NA        NA
    72  0.9999838579 -0.0000005812      NA       NA       NA       NA        NA
    73  0.4577257977  0.0234249999      NA       NA       NA       NA        NA
    74  0.7477926058  0.0101714697      NA       NA       NA       NA        NA
    75  0.3674781032  0.0259845948      NA       NA       NA       NA        NA
    76  0.7859933595  0.0101908032      NA       NA       NA       NA        NA
    77  0.5083921088  0.0246328983      NA       NA       NA       NA        NA
    78  0.9998908729 -0.0000031207      NA       NA       NA       NA        NA
    79  0.9999931445 -0.0000003210      NA       NA       NA       NA        NA
    80  0.9999702227 -0.0000012384      NA       NA       NA       NA        NA
    81  0.0639617249 -0.0631247069      NA       NA       NA       NA        NA
    82  0.0000110475 -0.1546997035      NA       NA       NA       NA        NA
    83  0.2729676507  0.0382565145      NA       NA       NA       NA        NA
    84  0.4819359826  0.0233698073      NA       NA       NA       NA        NA
    85  0.9130502642 -0.0039665184      NA       NA       NA       NA        NA
    86  0.1480277052  0.0448354743      NA       NA       NA       NA        NA
    87  0.9999477193  0.0000018015      NA       NA       NA       NA        NA
    88  0.6336607227 -0.0161980516      NA       NA       NA       NA        NA
    89  0.0107365417 -0.0985239859      NA       NA       NA       NA        NA
    90  0.1985925404 -0.0381783254      NA       NA       NA       NA        NA
    91  0.9782548493 -0.0008190470      NA       NA       NA       NA        NA
    92  0.7289414277  0.0099325296      NA       NA       NA       NA        NA
    93  0.0185463134 -0.0632187180      NA       NA       NA       NA        NA
    94  0.0460983057 -0.0463533135      NA       NA       NA       NA        NA
    95  0.0069255620 -0.0724480421      NA       NA       NA       NA        NA
    96  0.9999902675 -0.0000004478      NA       NA       NA       NA        NA
    97  0.5338898373 -0.0215219958      NA       NA       NA       NA        NA
    98  0.2431058619 -0.0432315853      NA       NA       NA       NA        NA
    99  0.0124724450  0.0917877625      NA       NA       NA       NA        NA
    100 0.0290051299  0.0751848392      NA       NA       NA       NA        NA
    101 0.0003584870  0.1303846342      NA       NA       NA       NA        NA
    102 0.0004728086  0.1116072460      NA       NA       NA       NA        NA
    103 0.7577135934 -0.0100087413      NA       NA       NA       NA        NA
    104 0.4167121263 -0.0244997157      NA       NA       NA       NA        NA
    105 0.2442560082 -0.0395825472      NA       NA       NA       NA        NA
    106 0.1756880502  0.0394179974      NA       NA       NA       NA        NA
    107 0.3659036197 -0.0256971895      NA       NA       NA       NA        NA
    108 0.1894043426  0.0374256171      NA       NA       NA       NA        NA
    109 0.9988749511 -0.0000381492      NA       NA       NA       NA        NA
    110 0.9216464677  0.0022908139      NA       NA       NA       NA        NA
    111 0.5160615272 -0.0176988458      NA       NA       NA       NA        NA
    112 0.2806725348 -0.0395061080      NA       NA       NA       NA        NA
    113 0.0013774928 -0.1132819557      NA       NA       NA       NA        NA
    114 0.1468769933 -0.0508700438      NA       NA       NA       NA        NA
    115 0.4816056005 -0.0233269002      NA       NA       NA       NA        NA
    116 0.6858871040  0.0141891913      NA       NA       NA       NA        NA
    117 0.3836800856  0.0269558262      NA       NA       NA       NA        NA
    118 0.0002370393 -0.1340810535      NA       NA       NA       NA        NA
    119 0.9998420341  0.0000050065      NA       NA       NA       NA        NA
    120 0.0000056921 -0.1636860940      NA       NA       NA       NA        NA
    121 0.0410958962 -0.0658715252      NA       NA       NA       NA        NA
    122 0.2428169753 -0.0346091863      NA       NA       NA       NA        NA
    123 0.1355011653 -0.0439285377      NA       NA       NA       NA        NA
    124 0.0000189970 -0.1207257426      NA       NA       NA       NA        NA
    125 0.0009747884 -0.0785940945      NA       NA       NA       NA        NA
    126 0.0000016445 -0.1307524151      NA       NA       NA       NA        NA
    127 0.9999561022 -0.0000016287      NA       NA       NA       NA        NA
    128 0.9998962556 -0.0000039245      NA       NA       NA       NA        NA
    129 0.5070949027  0.0219245687      NA       NA       NA       NA        NA
    130 0.6593336371 -0.0148987875      NA       NA       NA       NA        NA
    131 0.1865420079  0.0436305977      NA       NA       NA       NA        NA
    132 0.0620241561  0.0646225097      NA       NA       NA       NA        NA
    133 0.9998067628 -0.0000053023      NA       NA       NA       NA        NA
    134 0.0010138761  0.1157647090      NA       NA       NA       NA        NA
    135 0.0011543736  0.1222033313      NA       NA       NA       NA        NA
    136 0.0011737682  0.1160131483      NA       NA       NA       NA        NA
    137 0.9998954291 -0.0000028769      NA       NA       NA       NA        NA
    138 0.0004531580  0.0992267928      NA       NA       NA       NA        NA
    139 0.0000949940  0.0931111248      NA       NA       NA       NA        NA
    140 0.0003482761  0.0973804687      NA       NA       NA       NA        NA
    141 0.9999561538 -0.0000017427      NA       NA       NA       NA        NA
    142 0.0538714339  0.0725457748      NA       NA       NA       NA        NA
    143 0.0035122842  0.1115497400      NA       NA       NA       NA        NA
    144 0.9999202121 -0.0000028681      NA       NA       NA       NA        NA
    145 0.0000011180  0.1516883417      NA       NA       NA       NA        NA
    146 0.1318800944  0.0490541882      NA       NA       NA       NA        NA
    147 0.0030565424  0.0982787396      NA       NA       NA       NA        NA
    148 0.1271008406  0.0484064142      NA       NA       NA       NA        NA
    149 0.0278266777  0.0673470224      NA       NA       NA       NA        NA
    150 0.7831689800  0.0087486645      NA       NA       NA       NA        NA
    151 0.0566038282  0.0562600563      NA       NA       NA       NA        NA
    152 0.2739286760  0.0299463580      NA       NA       NA       NA        NA
    153 0.0009353037  0.0965149853      NA       NA       NA       NA        NA
    154 0.0389139171  0.0696552847      NA       NA       NA       NA        NA
    155 0.0909288751  0.0586392043      NA       NA       NA       NA        NA
    156 0.0000002245  0.1673684987      NA       NA       NA       NA        NA
    157 0.9198293815 -0.0030845068      NA       NA       NA       NA        NA
    158 0.6155628731 -0.0158635809      NA       NA       NA       NA        NA
    159 0.5841393236 -0.0181364361      NA       NA       NA       NA        NA
    160 0.1985113746  0.0399450359      NA       NA       NA       NA        NA
    161 0.6555006764  0.0135917711      NA       NA       NA       NA        NA
    162 0.0941243573  0.0508461901      NA       NA       NA       NA        NA
    163 0.5554892301  0.0175390425      NA       NA       NA       NA        NA
    164 0.9475571169  0.0018468871      NA       NA       NA       NA        NA
    165 0.0817761616  0.0512554503      NA       NA       NA       NA        NA
    166 0.0005895426  0.1397784095      NA       NA       NA       NA        NA
    167 0.9998815212 -0.0000035796      NA       NA       NA       NA        NA
    168 0.0194547009  0.0743302498      NA       NA       NA       NA        NA
    169 0.4357500447  0.0233365210      NA       NA       NA       NA        NA
    170 0.0004923726  0.1144302598      NA       NA       NA       NA        NA
    171 0.2093230795  0.0452481843      NA       NA       NA       NA        NA
    172 0.9998565944 -0.0000040263      NA       NA       NA       NA        NA
    173 0.2285625678  0.0438491893      NA       NA       NA       NA        NA
    174 0.1239817103  0.0526802791      NA       NA       NA       NA        NA
    175 0.9998157180 -0.0000043179      NA       NA       NA       NA        NA
    176 0.3159625343  0.0368465758      NA       NA       NA       NA        NA
    177 0.9998908225 -0.0000035662      NA       NA       NA       NA        NA
    178 0.9998579909 -0.0000047930      NA       NA       NA       NA        NA
    179 0.0248409515 -0.0742171366      NA       NA       NA       NA        NA
    180 0.0943942485  0.0623411942      NA       NA       NA       NA        NA
    181 0.5598049874 -0.0192504447      NA       NA       NA       NA        NA
    182 0.9232813892 -0.0030164846      NA       NA       NA       NA        NA
    183 0.6047362369 -0.0163049885      NA       NA       NA       NA        NA
    184 0.9998014868 -0.0000059300      NA       NA       NA       NA        NA
    185 0.0088760288 -0.0801165765      NA       NA       NA       NA        NA
    186 0.5296943384 -0.0200736596      NA       NA       NA       NA        NA
    187 0.6541180441  0.0137995971      NA       NA       NA       NA        NA
    188 0.5070466551 -0.0194228795      NA       NA       NA       NA        NA
    189 0.0470908618  0.0591757105      NA       NA       NA       NA        NA
    190 0.9997914644 -0.0000055108      NA       NA       NA       NA        NA
    191 0.1017494980 -0.0584053284      NA       NA       NA       NA        NA
    192 0.9998608092 -0.0000036849      NA       NA       NA       NA        NA
    193 0.2399678199  0.0315967042      NA       NA       NA       NA        NA
    194 0.7734602010 -0.0069034463      NA       NA       NA       NA        NA
    195 0.7361063967  0.0087450320      NA       NA       NA       NA        NA
    196 0.9997416929 -0.0000061445      NA       NA       NA       NA        NA
    197 0.9999435056 -0.0000015660      NA       NA       NA       NA        NA
    198 0.2002559091 -0.0437125883      NA       NA       NA       NA        NA
    199 0.9999041772 -0.0000023448      NA       NA       NA       NA        NA
    200 0.8229971698 -0.0072197005      NA       NA       NA       NA        NA
    201 0.0000614106  0.1121850358      NA       NA       NA       NA        NA
    202 0.0838369621  0.0431392992      NA       NA       NA       NA        NA
    203 0.0092157874  0.0705986406      NA       NA       NA       NA        NA
    204 0.9997847211 -0.0000057323      NA       NA       NA       NA        NA
    205 0.9995884292 -0.0000091393      NA       NA       NA       NA        NA
    206 0.0004847271  0.1151570868      NA       NA       NA       NA        NA
    207 0.0000034255  0.1502476248      NA       NA       NA       NA        NA
    208 0.9996639695 -0.0000072923      NA       NA       NA       NA        NA
    209 0.8728383190 -0.0044310273      NA       NA       NA       NA        NA
    210 0.5365056100  0.0177126865      NA       NA       NA       NA        NA
    211 0.0009133138  0.1064908987      NA       NA       NA       NA        NA
    212 0.2467702028  0.0379099176      NA       NA       NA       NA        NA
    213 0.3005249394  0.0300206655      NA       NA       NA       NA        NA
    214 0.0106327525  0.0900054135      NA       NA       NA       NA        NA
    215 0.9999585736  0.0000009258      NA       NA       NA       NA        NA
    216 0.0006978981  0.1215978271      NA       NA       NA       NA        NA
    217 0.9998421925 -0.0000033538      NA       NA       NA       NA        NA
    218 0.9998645116 -0.0000028637      NA       NA       NA       NA        NA
    219 0.0001792072  0.1032546603      NA       NA       NA       NA        NA
    220 0.0139619204  0.0610906927      NA       NA       NA       NA        NA
    221 0.0915252906  0.0486728874      NA       NA       NA       NA        NA
    222 0.9998994779 -0.0000020555      NA       NA       NA       NA        NA
    223 0.1739370494  0.0388299689      NA       NA       NA       NA        NA
    224 0.5712135965  0.0166989221      NA       NA       NA       NA        NA
    225 0.9999694471 -0.0000006651      NA       NA       NA       NA        NA
    226 0.0041852123  0.0690942869      NA       NA       NA       NA        NA
    227 0.0005487749  0.0749681419      NA       NA       NA       NA        NA
    228 0.0138653176  0.0680335103      NA       NA       NA       NA        NA
    229 0.9999115415 -0.0000013797      NA       NA       NA       NA        NA
    230 0.9999059638 -0.0000017937      NA       NA       NA       NA        NA
    231 0.9998977138 -0.0000015878      NA       NA       NA       NA        NA
    232 0.9997093011 -0.0000096232      NA       NA       NA       NA        NA
    233 0.9999646899  0.0000011767      NA       NA       NA       NA        NA
    234 0.9999847897  0.0000006426      NA       NA       NA       NA        NA
    235 0.9999996849 -0.0000000138      NA       NA       NA       NA        NA
    236 0.9999999968 -0.0000000002      NA       NA       NA       NA        NA
    237 0.9999995572 -0.0000000163      NA       NA       NA       NA        NA
    238 0.9999707568  0.0000013689      NA       NA       NA       NA        NA
    239 0.9999959905  0.0000001965      NA       NA       NA       NA        NA
    240 0.9999942476 -0.0000003191      NA       NA       NA       NA        NA
    241 0.9999690787 -0.0000015621      NA       NA       NA       NA        NA
    242 0.9999740914 -0.0000013297      NA       NA       NA       NA        NA
    243 0.9999995684  0.0000000200      NA       NA       NA       NA        NA
    244 0.9999996912  0.0000000094      NA       NA       NA       NA        NA
    245 0.9997183665 -0.0000091105      NA       NA       NA       NA        NA
    246 0.9999319745  0.0000022928      NA       NA       NA       NA        NA
    247 0.9999666165  0.0000014260      NA       NA       NA       NA        NA
    248 0.9999695085  0.0000012281      NA       NA       NA       NA        NA
    249 0.9999886827 -0.0000004562      NA       NA       NA       NA        NA
    250 0.9999655620  0.0000010051      NA       NA       NA       NA        NA
    251 0.9999621236  0.0000008370      NA       NA       NA       NA        NA
    252 0.9999959924  0.0000001171      NA       NA       NA       NA        NA
        epc_equal minimum maximum identified
    1          NA    -Inf     Inf      FALSE
    2          NA    -Inf     Inf      FALSE
    3          NA    -Inf     Inf      FALSE
    4          NA    -Inf     Inf      FALSE
    5          NA    -Inf     Inf      FALSE
    6          NA    -Inf     Inf      FALSE
    7          NA    -Inf     Inf      FALSE
    8          NA    -Inf     Inf      FALSE
    9          NA    -Inf     Inf      FALSE
    10         NA    -Inf     Inf      FALSE
    11         NA    -Inf     Inf      FALSE
    12         NA    -Inf     Inf      FALSE
    13         NA    -Inf     Inf      FALSE
    14         NA    -Inf     Inf      FALSE
    15         NA    -Inf     Inf      FALSE
    16         NA    -Inf     Inf      FALSE
    17         NA    -Inf     Inf      FALSE
    18         NA    -Inf     Inf      FALSE
    19         NA    -Inf     Inf      FALSE
    20         NA    -Inf     Inf      FALSE
    21         NA    -Inf     Inf      FALSE
    22         NA      -1       1      FALSE
    23         NA      -1       1      FALSE
    24         NA      -1       1      FALSE
    25         NA      -1       1      FALSE
    26         NA      -1       1      FALSE
    27         NA      -1       1      FALSE
    28         NA      -1       1      FALSE
    29         NA      -1       1      FALSE
    30         NA      -1       1      FALSE
    31         NA      -1       1      FALSE
    32         NA      -1       1      FALSE
    33         NA      -1       1      FALSE
    34         NA      -1       1      FALSE
    35         NA      -1       1      FALSE
    36         NA      -1       1      FALSE
    37         NA      -1       1      FALSE
    38         NA      -1       1      FALSE
    39         NA      -1       1      FALSE
    40         NA      -1       1      FALSE
    41         NA      -1       1      FALSE
    42         NA      -1       1      FALSE
    43         NA      -1       1      FALSE
    44         NA      -1       1      FALSE
    45         NA      -1       1      FALSE
    46         NA      -1       1      FALSE
    47         NA      -1       1      FALSE
    48         NA      -1       1      FALSE
    49         NA      -1       1      FALSE
    50         NA      -1       1      FALSE
    51         NA      -1       1      FALSE
    52         NA      -1       1      FALSE
    53         NA      -1       1      FALSE
    54         NA      -1       1      FALSE
    55         NA      -1       1      FALSE
    56         NA      -1       1      FALSE
    57         NA      -1       1      FALSE
    58         NA      -1       1      FALSE
    59         NA      -1       1      FALSE
    60         NA      -1       1      FALSE
    61         NA      -1       1      FALSE
    62         NA      -1       1      FALSE
    63         NA      -1       1      FALSE
    64         NA      -1       1      FALSE
    65         NA      -1       1      FALSE
    66         NA      -1       1      FALSE
    67         NA      -1       1      FALSE
    68         NA      -1       1      FALSE
    69         NA      -1       1      FALSE
    70         NA      -1       1      FALSE
    71         NA      -1       1      FALSE
    72         NA      -1       1      FALSE
    73         NA      -1       1      FALSE
    74         NA      -1       1      FALSE
    75         NA      -1       1      FALSE
    76         NA      -1       1      FALSE
    77         NA      -1       1      FALSE
    78         NA      -1       1      FALSE
    79         NA      -1       1      FALSE
    80         NA      -1       1      FALSE
    81         NA      -1       1      FALSE
    82         NA      -1       1      FALSE
    83         NA      -1       1      FALSE
    84         NA      -1       1      FALSE
    85         NA      -1       1      FALSE
    86         NA      -1       1      FALSE
    87         NA      -1       1      FALSE
    88         NA      -1       1      FALSE
    89         NA      -1       1      FALSE
    90         NA      -1       1      FALSE
    91         NA      -1       1      FALSE
    92         NA      -1       1      FALSE
    93         NA      -1       1      FALSE
    94         NA      -1       1      FALSE
    95         NA      -1       1      FALSE
    96         NA      -1       1      FALSE
    97         NA      -1       1      FALSE
    98         NA      -1       1      FALSE
    99         NA      -1       1      FALSE
    100        NA      -1       1      FALSE
    101        NA      -1       1      FALSE
    102        NA      -1       1      FALSE
    103        NA      -1       1      FALSE
    104        NA      -1       1      FALSE
    105        NA      -1       1      FALSE
    106        NA      -1       1      FALSE
    107        NA      -1       1      FALSE
    108        NA      -1       1      FALSE
    109        NA      -1       1      FALSE
    110        NA      -1       1      FALSE
    111        NA      -1       1      FALSE
    112        NA      -1       1      FALSE
    113        NA      -1       1      FALSE
    114        NA      -1       1      FALSE
    115        NA      -1       1      FALSE
    116        NA      -1       1      FALSE
    117        NA      -1       1      FALSE
    118        NA      -1       1      FALSE
    119        NA      -1       1      FALSE
    120        NA      -1       1      FALSE
    121        NA      -1       1      FALSE
    122        NA      -1       1      FALSE
    123        NA      -1       1      FALSE
    124        NA      -1       1      FALSE
    125        NA      -1       1      FALSE
    126        NA      -1       1      FALSE
    127        NA      -1       1      FALSE
    128        NA      -1       1      FALSE
    129        NA      -1       1      FALSE
    130        NA      -1       1      FALSE
    131        NA      -1       1      FALSE
    132        NA      -1       1      FALSE
    133        NA      -1       1      FALSE
    134        NA      -1       1      FALSE
    135        NA      -1       1      FALSE
    136        NA      -1       1      FALSE
    137        NA      -1       1      FALSE
    138        NA      -1       1      FALSE
    139        NA      -1       1      FALSE
    140        NA      -1       1      FALSE
    141        NA      -1       1      FALSE
    142        NA      -1       1      FALSE
    143        NA      -1       1      FALSE
    144        NA      -1       1      FALSE
    145        NA      -1       1      FALSE
    146        NA      -1       1      FALSE
    147        NA      -1       1      FALSE
    148        NA      -1       1      FALSE
    149        NA      -1       1      FALSE
    150        NA      -1       1      FALSE
    151        NA      -1       1      FALSE
    152        NA      -1       1      FALSE
    153        NA      -1       1      FALSE
    154        NA      -1       1      FALSE
    155        NA      -1       1      FALSE
    156        NA      -1       1      FALSE
    157        NA      -1       1      FALSE
    158        NA      -1       1      FALSE
    159        NA      -1       1      FALSE
    160        NA      -1       1      FALSE
    161        NA      -1       1      FALSE
    162        NA      -1       1      FALSE
    163        NA      -1       1      FALSE
    164        NA      -1       1      FALSE
    165        NA      -1       1      FALSE
    166        NA      -1       1      FALSE
    167        NA      -1       1      FALSE
    168        NA      -1       1      FALSE
    169        NA      -1       1      FALSE
    170        NA      -1       1      FALSE
    171        NA      -1       1      FALSE
    172        NA      -1       1      FALSE
    173        NA      -1       1      FALSE
    174        NA      -1       1      FALSE
    175        NA      -1       1      FALSE
    176        NA      -1       1      FALSE
    177        NA      -1       1      FALSE
    178        NA      -1       1      FALSE
    179        NA      -1       1      FALSE
    180        NA      -1       1      FALSE
    181        NA      -1       1      FALSE
    182        NA      -1       1      FALSE
    183        NA      -1       1      FALSE
    184        NA      -1       1      FALSE
    185        NA      -1       1      FALSE
    186        NA      -1       1      FALSE
    187        NA      -1       1      FALSE
    188        NA      -1       1      FALSE
    189        NA      -1       1      FALSE
    190        NA      -1       1      FALSE
    191        NA      -1       1      FALSE
    192        NA      -1       1      FALSE
    193        NA      -1       1      FALSE
    194        NA      -1       1      FALSE
    195        NA      -1       1      FALSE
    196        NA      -1       1      FALSE
    197        NA      -1       1      FALSE
    198        NA      -1       1      FALSE
    199        NA      -1       1      FALSE
    200        NA      -1       1      FALSE
    201        NA      -1       1      FALSE
    202        NA      -1       1      FALSE
    203        NA      -1       1      FALSE
    204        NA      -1       1      FALSE
    205        NA      -1       1      FALSE
    206        NA      -1       1      FALSE
    207        NA      -1       1      FALSE
    208        NA      -1       1      FALSE
    209        NA      -1       1      FALSE
    210        NA      -1       1      FALSE
    211        NA      -1       1      FALSE
    212        NA      -1       1      FALSE
    213        NA      -1       1      FALSE
    214        NA      -1       1      FALSE
    215        NA      -1       1      FALSE
    216        NA      -1       1      FALSE
    217        NA      -1       1      FALSE
    218        NA      -1       1      FALSE
    219        NA      -1       1      FALSE
    220        NA      -1       1      FALSE
    221        NA      -1       1      FALSE
    222        NA      -1       1      FALSE
    223        NA      -1       1      FALSE
    224        NA      -1       1      FALSE
    225        NA      -1       1      FALSE
    226        NA      -1       1      FALSE
    227        NA      -1       1      FALSE
    228        NA      -1       1      FALSE
    229        NA      -1       1      FALSE
    230        NA      -1       1      FALSE
    231        NA      -1       1      FALSE
    232        NA       0     Inf      FALSE
    233        NA       0     Inf      FALSE
    234        NA       0     Inf      FALSE
    235        NA       0     Inf      FALSE
    236        NA       0     Inf      FALSE
    237        NA       0     Inf      FALSE
    238        NA       0     Inf      FALSE
    239        NA       0     Inf      FALSE
    240        NA       0     Inf      FALSE
    241        NA       0     Inf      FALSE
    242        NA       0     Inf      FALSE
    243        NA       0     Inf      FALSE
    244        NA       0     Inf      FALSE
    245        NA       0     Inf      FALSE
    246        NA       0     Inf      FALSE
    247        NA       0     Inf      FALSE
    248        NA       0     Inf      FALSE
    249        NA       0     Inf      FALSE
    250        NA       0     Inf      FALSE
    251        NA       0     Inf      FALSE
    252        NA       0     Inf      FALSE

``` r
knitr::include_graphics("./figures/balezina_irma-reduced-network_study-2.png")
```

<img src="./figures/balezina_irma-reduced-network_study-2.png"
width="14400" />
