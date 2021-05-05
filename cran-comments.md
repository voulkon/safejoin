# Resubmission

## Adressing feedback

> Please omit the redundant "in R" from the title.

Updated.

> The Description field is intended to be a (one paragraph) description of
> what the package does and why it may be useful.
> Please add more details about the package functionality and implemented
> methods in your Description text.

Updated.

> Please always write package names, software names and API (application
> programming interface) names in single quotes in title and description.
> e.g: --> 'safejoin'

Updated.

> \dontrun{} should only be used if the example really cannot be executed
> (e.g. because of missing additional software, missing API keys, ...) by
> the user. That's why wrapping examples in \dontrun{} adds the comment
> ('# Not run:') as a warning for the user.
> Does not seem necessary.

> Please unwrap the examples if they are executable in < 5 sec, or replace
> \dontrun{} with \donttest{}.

I was having some issue figuring out the correct thing to do here. The code that
is wrapped the \dontrun{} block is code that is intended to fail. This is an 
important example to show users. I tried wrapping in \donttest{} but that resulted
in check() raising an error. I have done some research and there is guidance that
suggests to use \dontrun{} (see
https://github.com/r-lib/devtools/issues/2216#issuecomment-805763344 and
https://r-pkgs.org/man.html?q=dontrun#man-functions). Please let me know if you
agree with this assemssment or if you have guidance on another approach.

## Test environments

### Local

* local R installation, R 4.0.5

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