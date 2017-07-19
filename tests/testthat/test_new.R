library(mytestpkg)
context("basic test of new package")


test_9 <- new_fun(3,7)

test_that("my function works", {
  expect_equal(test_9, -6.4)
})


context("test of Tobler function package")
#set.seed(4)
#a <- tobler_fun(4)
#saveRDS(a, "tests/testthat/a.rds")
a <- readRDS("a.rds")
test2 <- tobler_fun(4)

test_that("my second function works", {
  expect_equal(length(test2), length(a))
})
