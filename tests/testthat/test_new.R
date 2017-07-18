library(mytestpkg)
context("basic test of new package")


test_9 <- new_fun(3,7)

test_that("my function works", {
  expect_equal(test_9, -6.4)
})

library()
