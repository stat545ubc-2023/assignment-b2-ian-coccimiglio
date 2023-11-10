
<!-- README.md is generated from README.Rmd. Please edit that file -->

# visian

<!-- badges: start -->
<!-- badges: end -->

Visian is a package which helps you determine the number of non-zero
values in your dataset.

## Installation

You can install the development version of visian from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/visian", build_vignettes = TRUE)
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

However, the function can also be used with non-standard inputs,
including character and boolean vectors, as well as count non-zeros in
dataframe columns.

``` r
char_vec <- c("A", "B", "0")
countNonZero(char_vec)
#> [1] 2

bool_vec <- c(FALSE, TRUE, TRUE, FALSE)
countNonZero(bool_vec)
#> [1] 2
```

I hope you find this package useful and robust.
