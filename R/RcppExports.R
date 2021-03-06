# This file was generated by Rcpp::compileAttributes
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

lgammap <- function(x, p = 1L) {
    .Call('correlateR_lgammap', PACKAGE = 'correlateR', x, p)
}

logdet_arma <- function(x) {
    .Call('correlateR_logdet_arma', PACKAGE = 'correlateR', x)
}

#' Marginal correlation matrix
#' 
#' Various workhorse functions to compute the marginal (or unconditional) 
#' correlations (and cross-correlation) estimates efficiently. 
#' They are (almost) 
#' equivalent implementations of \code{\link[stats]{cor}} in Rcpp, 
#' RcppArmadillo, and RcppEigen.
#' 
#' @rdname corFamily
#' @aliases corFamily
#'   corRcpp xcorRcpp corArma xcorArma corEigen xcorEigen
#' @param X A numeric matrix.
#' @param Y A numeric matrix of compatible dimension with the \code{X}, i.e. 
#'   \code{nrow(X)} equals \code{nrow(Y)}.
#' @return
#'   The \code{corXX} family returns a numeric correlation matrix of size 
#'   \code{ncol(X)} times \code{ncol(X)}.
#'   
#'   The \code{xcorXX} family returns a numeric cross-correlation matrix 
#'   of size \code{ncol(X)} times \code{ncol(Y)}.
#' @details
#'   Functions almost like \code{\link{cor}}.
#'   For the \code{xcorXX} functions, the \code{i}'th and \code{j}'th 
#'   entry of the output matrix is the correlation between \code{X[i, ]} and 
#'   \code{X[j, ]}.
#'   Likewise, for the \code{xcorXX} functions, the \code{i}'th and
#'   \code{j}'th entry of the output is the correlation between \code{X[i, ]} 
#'   and \code{Y[j, ]}.
#' @note 
#'   NA's in \code{X} or \code{Y} will yield NA's in the correlation matrix.
#'   This also includes the diagonal unlike the behavior of 
#'   \code{\link[stats]{cor}}.
#' @author Anders Ellern Bilgrau <anders.ellern.bilgrau (at) gmail.com>
#' @export
corRcpp <- function(X) {
    .Call('correlateR_corRcpp', PACKAGE = 'correlateR', X)
}

#' @rdname corFamily
#' @export
xcorRcpp <- function(X, Y) {
    .Call('correlateR_xcorRcpp', PACKAGE = 'correlateR', X, Y)
}

#' @rdname corFamily
#' @export
corArma <- function(X) {
    .Call('correlateR_corArma', PACKAGE = 'correlateR', X)
}

#' @rdname corFamily
#' @export
xcorArma <- function(X, Y) {
    .Call('correlateR_xcorArma', PACKAGE = 'correlateR', X, Y)
}

#' @rdname corFamily
#' @export
corEigen <- function(X) {
    .Call('correlateR_corEigen', PACKAGE = 'correlateR', X)
}

#' @rdname corFamily
#' @export
xcorEigen <- function(X, Y) {
    .Call('correlateR_xcorEigen', PACKAGE = 'correlateR', X, Y)
}

#' Convert covariance matrix to correlation
#' 
#' This functions converts a covariance matrix \code{S} to a correlation matrix
#' fast and efficiently.
#' 
#' @rdname cov2cor
#' @aliases cov2cor
#' @param S A square covariance matrix.
#' @return A square correlation matrix.
#' @author Anders Ellern Bilgrau <anders.ellern.bilgrau (at) gmail.com>
#' @examples
#' X <- createData(n = 11, m = 4)
#' S <- cov(X)
#' stats::cov2cor(S)
#' cov2corArma(S)
#' if (require(microbenchmark)) {
#'   microbenchmark(A = cov2corArma(S),
#'                  B = stats::cov2cor(S),
#'                  C = cov2cor(S))
#' }
#' @export
cov2corArma <- function(S) {
    .Call('correlateR_cov2corArma', PACKAGE = 'correlateR', S)
}

#' Marginal covariance matrix
#' 
#' Various workhorse functions to compute the marginal (or unconditional) 
#' covariance (and cross-covariance) estimates. The functions feature both the 
#' maximum likelihood and the biased corrected estimates. They are (almost) 
#' equivalent implementations of \code{\link[stats]{cov}} (\code{stats::cov}) 
#' in Rcpp, RcppArmadillo, and RcppEigen.
#' 
#' @rdname covFamily
#' @aliases covFamily covRcpp xcovRcpp covArma xcovArma covEigen xcovEigen
#' @param X A numeric matrix.
#' @param Y A numeric matrix of compatible dimension with the \code{X}, i.e. 
#'   \code{nrow(X)} equals \code{nrow(Y)}.
#' @param norm_type an integer of length one giving the estimator. The 
#'   default \code{0L} gives the unbiased estimate while \code{1L} gives the 
#'   MLE.
#' @return
#'   The \code{cor}-family returns a numeric correlation matrix of size 
#'   \code{ncol(X)} times \code{ncol(X)}.
#'   
#'   The \code{xcor}-family returns a numeric cross-covariance matrix 
#'   of size \code{ncol(X)} times \code{ncol(Y)}.
#' @details
#'   Functions almost like \code{\link{cor}}.
#'   For the \code{xcorXX} functions, the \code{i}'th and \code{j}'th 
#'   entry of the output matrix is the correlation between \code{X[i, ]} and 
#'   \code{X[j, ]}.
#'   Likewise, for the \code{xcorXX} functions, the \code{i}'th and
#'   \code{j}'th entry of the output is the correlation between \code{X[i, ]} 
#'   and \code{Y[j, ]}.
#' @note 
#'   NA's in \code{X} or \code{Y} will yield NA's in the correlation matrix.
#'   This also includes the diagonal unlike the behavior of 
#'   \code{stats::cor(X)}.
#' @author Anders Ellern Bilgrau <anders.ellern.bilgrau (at) gmail.com>
#' @export
covRcpp <- function(X, norm_type = 0L) {
    .Call('correlateR_covRcpp', PACKAGE = 'correlateR', X, norm_type)
}

#' @rdname covFamily
#' @export
xcovRcpp <- function(X, Y, norm_type = 0L) {
    .Call('correlateR_xcovRcpp', PACKAGE = 'correlateR', X, Y, norm_type)
}

#' @rdname covFamily
#' @export
covArma <- function(X, norm_type = 0L) {
    .Call('correlateR_covArma', PACKAGE = 'correlateR', X, norm_type)
}

#' @rdname covFamily
#' @export
xcovArma <- function(X, Y, norm_type = 0L) {
    .Call('correlateR_xcovArma', PACKAGE = 'correlateR', X, Y, norm_type)
}

#' @rdname covFamily
#' @export
covEigen <- function(X, norm_type = 0L) {
    .Call('correlateR_covEigen', PACKAGE = 'correlateR', X, norm_type)
}

#' @rdname covFamily
#' @export
xcovEigen <- function(X, Y, norm_type = 0L) {
    .Call('correlateR_xcovEigen', PACKAGE = 'correlateR', X, Y, norm_type)
}

pcorArma <- function(X, z) {
    .Call('correlateR_pcorArma', PACKAGE = 'correlateR', X, z)
}

pcovArma <- function(X, z) {
    .Call('correlateR_pcovArma', PACKAGE = 'correlateR', X, z)
}

#' Pooled covariance from list of scatter matrices
#' 
#' @param S_list A list of scatter matrices.
#' @param nu A numeric vector giving the number of samples corresponding
#'   to each scatter matrix.
#' @param norm_type A integer of length one equaling \code{0} or \code{1}. 
#'   If \code{0} the bias correction is used. If \code{1} the ML estimate is 
#'   used.
#' @return A numeric matrix giving the pooled variance.
#' @author Anders Ellern Bilgrau
#' @keywords internal
pool <- function(S_list, ns, norm_type = 0L) {
    .Call('correlateR_pool', PACKAGE = 'correlateR', S_list, ns, norm_type)
}

pxcorArma <- function(X, Y, Z) {
    .Call('correlateR_pxcorArma', PACKAGE = 'correlateR', X, Y, Z)
}

pxcovArma <- function(X, Y, Z, norm_type = 0L) {
    .Call('correlateR_pxcovArma', PACKAGE = 'correlateR', X, Y, Z, norm_type)
}

rcm_logdetPsiPlusS_arma <- function(Psi, S_list) {
    .Call('correlateR_rcm_logdetPsiPlusS_arma', PACKAGE = 'correlateR', Psi, S_list)
}

#' The RCM log-likelihood function
#' 
#' Fast evaluation of the RCM log-likelihood function.
#' 
#' @param Psi A \code{p} times \code{p} numeric positive semi-definte matrix.
#' @param nu A numeric of length 1 giving the degrees of freedom.
#' @param S_list A \code{list} of scatter matrices of the same size as 
#'   \code{Psi} for each group.
#' @param ns A numeric of the same length as \code{S_list} giving the 
#'   number of samples in each group.
#' @return The value of the log-likelihood.
#' @author Anders Ellern Bilgrau <anders.ellern.bilgrau (at) gmail.com>
#' @examples
#' ns <-  c(5, 5, 5)
#' S <- createRCMData(ns = ns, psi = diag(4), nu = 30)
#' correlateR:::rcm_loglik_arma(Psi = diag(4), nu = 15, S_list = S, ns = ns)
#' @keywords internal
rcm_loglik_arma <- function(Psi, nu, S_list, ns) {
    .Call('correlateR_rcm_loglik_arma', PACKAGE = 'correlateR', Psi, nu, S_list, ns)
}

rcm_loglik_nu_arma <- function(logdetPsi, nu, logdetPsiPlusS, ns, p) {
    .Call('correlateR_rcm_loglik_nu_arma', PACKAGE = 'correlateR', logdetPsi, nu, logdetPsiPlusS, ns, p)
}

#' The RCM EM-step
#' 
#' A armadillo-based function to perform the E and M step in the 
#' EM algorithm of the RCM. This functions assumes \code{nu} to be fixed.
#' 
#' @param Psi A numeric matrix.
#' @param nu A numeric of length 1 giving the degrees of freedom in the RCM.
#' @param S_list A \code{list} of scatter matrices for each dataset/group
#'   of the same size a \code{Psi}.
#' @param ns A numeric vector the same lengths as \code{S_list} giving the
#'   number of samples for each dataset.
#' @return A numeric matrix the same size as \code{Psi} giving the updated
#'   \code{Psi}.
#' @examples
#' ns <-  c(5, 5, 5)
#' S <- createRCMData(ns = ns, psi = diag(4), nu = 30)
#' correlateR:::rcm_em_step_arma(Psi = diag(4), nu = 15, S_list = S, ns = ns)
#' @keywords internal 
rcm_em_step_arma <- function(Psi, nu, S_list, ns) {
    .Call('correlateR_rcm_em_step_arma', PACKAGE = 'correlateR', Psi, nu, S_list, ns)
}

rwishartArma <- function(n, sigma, nu) {
    .Call('correlateR_rwishartArma', PACKAGE = 'correlateR', n, sigma, nu)
}

rinvwishartArma <- function(n, psi, nu) {
    .Call('correlateR_rinvwishartArma', PACKAGE = 'correlateR', n, psi, nu)
}

