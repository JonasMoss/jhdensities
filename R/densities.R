djh1 <- function(x, log = FALSE) {
  stats::dbeta(x, shape1 = 4, shape2 = 4, log = log)
}

djh15 <- function(x, log = FALSE) {
  rho <- 0.7
  y <- 0.7

  inside <- rho^2 * (stats::qnorm(x)^2 + stats::qnorm(y)^2) - 2 *
    rho * stats::qnorm(x) * stats::qnorm(y)

  if (!log) {
    return(1 / sqrt(1 - rho^2) * exp(-inside / (2 * (1 - rho^2))))
  } else {
    -0.5 * log(1 - rho^2) + -inside / (2 * (1 - rho^2))
  }
}
