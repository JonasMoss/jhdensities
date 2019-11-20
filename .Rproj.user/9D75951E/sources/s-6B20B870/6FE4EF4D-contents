rjh1 <- function(n) {
  stats::rbeta(n, shape1 = 4, shape2 = 4)
}

rjh15 <- function(n) {
  rho <- 0.7
  y <- 0.7
  stats::pnorm(stats::rnorm(n) * (1 - rho^2)^(1/2) + rho*stats::qnorm(y))
}
