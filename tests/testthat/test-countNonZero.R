df <- data.frame('Name'=c("John", "Sarah", "Jeff", "Karen", "Sam"), "First_Aid_Training"=c(0,1,1,0,1))

test_that("numeric vectors work", {
  expect_equal(countNonZero(c(0, 0, 0)), 0)
  expect_equal(countNonZero(c(1, 1, 1)), 3)
  expect_equal(countNonZero(c(0, 2, 2)), 2)
})

test_that("string vectors work", {
  expect_equal(countNonZero(c("0", "0", "0")), 0)
  expect_equal(countNonZero(c("0", "1", "1")), 2)
})

test_that("NAs create errors", {
  expect_error(countNonZero(c(NA, NA)))
  expect_error(countNonZero(c(1, 0, NA)))
})

test_that("Dataframes are counted for each column", {
  expect_equal(countNonZero(df), c("Name"=5,"First_Aid_Training"=3))
})

rm('df')
