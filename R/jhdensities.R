#' The Jones-Henderson Example Densities
#'
#' Density, distribution function, and random generation for the sixteen
#'    Jones-Henderson example densities on the unit interval.
#'
#' Jones and Henderson (2007b) introduced sixteen densities on the unit interval
#'    intended as benchmark densities for non-parametric densities on the unit
#'    interval. For details see Jones and Henderson (2007b).
#'
#'
#' @export
#' @name JHDensities
#' @param x,q vector of quantiles.
#' @param n number of observations. If `length(n) > 1`, the length is taken to
#'     be the number required.
#' @param index an integer between `1` and `16` inclusive.
#' @param log,log.p logical; if `TRUE`, probabilities `p` are given as `log(p)`.
#' @param lower.tail logical; if `TRUE` (default), probabilities are
#'    \eqn{P[X \le x]} otherwise, \eqn{P[X > x]}.
#' @return `djh` gives the density, `pjh` gives the distribution function, and
#'    `rjh` generates random deviates.
#'
#'    The length of the result is determined by `n` for `rjh`, and is the length
#'    of `x` for `djh` and the length of `q` for `pjh`.
#' @references Jones, M. C., & Henderson, D. A. (2007a). Miscellanea kernel-type
#'     density estimation on the unit interval. Biometrika, 94(4), 977-984.
#'
#'     Jones, M. C., & Henderson, D. A. (2007b). Kernel-Type Density Estimation
#'     on the Unit Interval,” Statistics Group Technical Report, the Open
#'     University
#'
#'     Geenens, G. (2014). Probit transformation for kernel density estimation
#'     on the unit interval. Journal of the American Statistical Association,
#'     109(505), 346-358.

djh <- function(x, index, log = FALSE) {
  assertthat::assert_that(is_valid_index(index))
  assertthat::assert_that(is_valid_input(x))
  assertthat::assert_that(is_logical_scalar(log))

  eval(call(paste0("djh", index), x, log = log))
}

#' @rdname JHDensities
#' @export
pjh <- function(q, index, lower.tail = TRUE, log.p = FALSE) {
  assertthat::assert_that(is_valid_index(index))
  assertthat::assert_that(is_valid_input(q))
  assertthat::assert_that(is_logical_scalar(log.p))
  assertthat::assert_that(is_logical_scalar(lower.tail))

  eval(call(paste0("pjh", index), q, lower.tail = lower.tail, log.p = log.p))
}

#' @rdname JHDensities
#' @export
rjh <- function(n, index) {
  if (length(n) > 1) n <- length(n)
  assertthat::assert_that(is_valid_index(index))
  assertthat::assert_that(is_positive_integer(n))

  eval(call(paste0("rjh", index), n))
}
