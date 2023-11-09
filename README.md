
<!-- README.md is generated from README.Rmd. Please edit that file -->

# visian

<!-- badges: start -->
<!-- badges: end -->

Visian is a package which helps you determine the number of real values
in your dataset.

## Installation

You can install the development version of visian from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/visian")
```

## Example

This is a basic example which shows you how to count the number of
non-zero elements of simple numeric vectors.

``` r
library(visian)
num_vec <- c(1,2,3,4,5,0,0,0)
countNonZero(num_vec)
#> [1] 5
```
