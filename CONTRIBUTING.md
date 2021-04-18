# Contributing

`safejoin` is happy to accept contributions. Please review the details below for how to contribute.

## Checklist

Before submitting a PR please run the following:

```r
library(devtools)

# Build docs
document()
rmarkdown::render("README.Rmd")
fs::file_delete("README.html")
pkgdown::build_site(preview = FALSE, run_dont_run = TRUE)

# Check
check()
```

## Releasing to CRAN

First run the steps outlined above that are required before submitting a PR. Then run:

```r

```