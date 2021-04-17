
<!-- README.md is generated from README.Rmd. Please edit that file -->

# safejoin

The goal of safejoin is to gaurntee that when performing joins that
extra rows are not added to your data.

## Installation

You can install the released version of safejoin from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("safejoin")
```

## Example

Depending on your need safejoin can throw an error, a warning, or a
message. By default safejoin will throw an error.

**Throwing an error**:

``` r
library(safejoin)
x <- data.frame(key = c("a", "b"), value_x = c(1, 2))
y <- data.frame(key = c("a", "a"), value_y = c(1, 1))
safe_left_join(x, y, by = "key")
#> Error in safe_left_join(x, y, by = "key"): Input data x had 2 rows. After performing the join the data has 3 rows.
```

**Throwing a warning**:

``` r
safe_left_join(x, y, by = "key", action="warning")
#> Warning in safe_left_join(x, y, by = "key", action = "warning"): Input data x
#> had 2 rows. After performing the join the data has 3 rows.
#>   key value_x value_y
#> 1   a       1       1
#> 2   a       1       1
#> 3   b       2      NA
```

**Throwing a message**:

``` r
safe_left_join(x, y, by = "key", action="message")
#> Input data x had 2 rows. After performing the join the data has 3 rows.
#>   key value_x value_y
#> 1   a       1       1
#> 2   a       1       1
#> 3   b       2      NA
```
