#' Non-zero element counter
#' This function returns the number of non-zero elements in a vector
#' (including values that can be coerced to equal 0, such as FALSE and "0").
#' It is also capable of handling non-vector inputs, such as lists and dataframes.
#' Values of NA will throw an error as they cannot be assigned a value of true/false.
#'
#' @param vec A vector of inputs.
#' The name suggests that this function is designed to operate on generic vectors,
#' and not explicitly designed for higher level structures.
#'
#' @return numNonZero An integer count of non zero values
#' @export
#'
#' @examples
#' # You can use countNonZero on most vectors, including numeric, character, and boolean
#' countNonZero(seq(0,5))
#' countNonZero(c("1","0","0","1"))
#' countNonZero(c(TRUE, FALSE, TRUE, TRUE))
#'
#' # Alternatively, you can supply a dataframe as an argument as well
#' countNonZero(df)
countNonZero <- function(vec) {
  if (is.data.frame(vec)) {
    print("Note: Counting non-zero entries across all rows and columns")
  }
  if (any(is.na(vec))) stop("NAs detected in input")
  nonZeroElements <- (vec != 0)
  numNonZero <- sum(nonZeroElements)
  return(numNonZero)
}

