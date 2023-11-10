#' Non-zero element counter
#' @description
#' This function returns the number of non-zero elements in a vector
#' (including values that can be coerced to equal 0, such as FALSE and "0").
#' It is also capable of handling non-vector inputs, such as lists and dataframes.
#' Values of NA will throw an error as they cannot be assigned a value of true/false.
#'
#' @param vec A vector or dataframe, featuring possible zeros.
#'
#' @return numNonZero An integer count of non zero values
#' @export
#'
#' @examples
#' df <- data.frame("ID"=as.character(seq(1,5)), "First_Aid_Training"=c(0,1,1,0,1))
#' # You can use countNonZero on most vectors, including numeric, character, and boolean
#' countNonZero(seq(0,5))
#' countNonZero(c("1","0","0","1"))
#' countNonZero(c(TRUE, FALSE, TRUE, TRUE))
#'
#' # Alternatively, you can supply a dataframe as an argument as well.
#' # This will calculate the number of non-zero entries in each column and return a vector.
#' countNonZero(df)
#'
countNonZero <- function(vec) {
  if (any(is.na(vec))) stop("NAs detected in input")

  nonZeroElements <- (vec != 0)

  if (is.data.frame(vec)) {
    print("Dataframe input: Counting non-zero entries for each row and column")
    numNonZero <- apply(nonZeroElements, 2, sum)
  }
  else {
    numNonZero <- sum(nonZeroElements)
  }

  return(numNonZero)
}

