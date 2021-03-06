#' Compute first order partial correlations
#'
#' This function computes the first order partial correlation given the
#' \code{k}'th variable.
#' 
#' @param S A numeric correlation matrix
#' @param k An integer. The index of the variable to condition on.
#' @return A matrix of the same size as \code{X} with \code{NaN}s in the
#'   \code{k} row and column.
#' @seealso \code{\link{cor}}
#' @author Anders Ellern Bilgrau <anders.ellern.bilgrau (at) gmail.com>
#' @examples
#' X <- createData(4, 10)
#' S <- cor(X)
#' firstOrderPartialCorrelation(S, 2)
#' @export
firstOrderPartialCorrelation <- function(S, k) {
  stopifnot(k %in% seq_len(ncol(S)))
  
  # 1 - S[k, ]^2 sometimes is negative!
  tmp <- sqrt(abs(1 - S[k, ]^2))
  
  ans <- (S - tcrossprod(S[k, ]))/tcrossprod(tmp)
  ans[k, ] <- ans[, k] <- NaN
  return(ans)
}

# firstOrderPartialCorrelation2 <- function(X, Y, Z) {
# 
#   xcor <- cor(X, Y)
#   xcor
#   
#   # 1 - S[k, ]^2 sometimes is negative!
#   tmp <- sqrt(abs(1 - S[k, ]^2))
#   
#   ans <- (S - tcrossprod(S[k, ]))/tcrossprod(tmp)
#   ans[k, ] <- ans[, k] <- NaN
#   return(ans)
# }

