## Test environments

### Local

* local R installation, R 4.0.0

### GitHub Actions

https://github.com/SamEdwardes/safejoin/actions/workflows/R-CMD-check.yaml

* windows-latest (release)
* macOS-latest (release)
* ubuntu-20.04 (release)
* ubuntu-20.04 (devel)

## R CMD check results

```r
Duration: 13.1s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓
```

## Downstream dependencies

safejoin relies on dplyr and glue. Both packages are developed and maintained by the Tidyverse. No downstream checks were performed as the Tidyverse is known to be stable and reliable.