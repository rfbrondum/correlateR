context("Marginal covariance tests")

# Testing data
n <- 50
m_X <- 10
m_Y <-15
X <- createData(n, m_X)
Y <- createData(n, m_Y)

# Gold standard:
cov_X <- stats::cov(X)  # Standard covariance
cov_XY <- stats::cov(X, Y)  # Standard cross-covariance

test_that("Covariance is computed correctly", {
  expect_that(cov_X,           is_equivalent_to(covArma(X, 0)))
  expect_that(cov_X*(n - 1)/n, is_equivalent_to(covArma(X, 1)))
  expect_that(cov_X,           is_equivalent_to(xcovArma(X, X, 0)))
  expect_that(cov_X*(n - 1)/n, is_equivalent_to(xcovArma(X, X, 1)))
  expect_that(cov_X,           is_equivalent_to(covEigen(X, 0)))
  expect_that(cov_X*(n - 1)/n, is_equivalent_to(covEigen(X, 1)))
  expect_that(cov_X,           is_equivalent_to(xcovEigen(X, X, 0)))
  expect_that(cov_X*(n - 1)/n, is_equivalent_to(xcovEigen(X, X, 1)))
  expect_that(cov_X,           equals(cov(X)))
  expect_that(cov_X*(n - 1)/n, equals(cov(X, method = "ML")))
})

test_that("Cross-correlation is computed correctly", {
  expect_that(cov_XY,           is_equivalent_to(xcovArma(X, Y, 0)))
  expect_that(cov_XY*(n - 1)/n, is_equivalent_to(xcovArma(X, Y, 1)))
  expect_that(cov_XY,           is_equivalent_to(xcovEigen(X, Y, 0)))
  expect_that(cov_XY*(n - 1)/n, is_equivalent_to(xcovEigen(X, Y, 1)))
  expect_that(cov_XY,           equals(xcov(X, Y)))
  expect_that(cov_XY*(n - 1)/n, equals(xcov(X, Y, method = "ML")))
})

# ADD TESTS WITH MISSING VALUES!



