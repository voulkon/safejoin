# Contributing

`safejoin` is happy to accept contributions. Please review the details below for how to contribute.

## Checklist

Before submitting a PR please run the following:

```r
library(devtools)
document()
knitr::knit("README.Rmd")
pkgdown::build_site(preview = FALSE, run_dont_run = TRUE)
check()
```

## Building docs

After making any documentation changes please be sure to run the following:

```r
library(devtools)
document()
pkgdown::build_site(preview = FALSE, run_dont_run = TRUE)
```