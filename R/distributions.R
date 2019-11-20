pjh1 <- function(q, lower.tail = TRUE, log.p = FALSE) {
  stats::pbeta(q,
    shape1 = 4, shape2 = 4, lower.tail = lower.tail,
    log.p = log.p
  )
}

pjh15 <- function(q, lower.tail = TRUE, log.p = FALSE) {
  rho <- 0.7
  y <- 0.7
  stats::pnorm(stats::qnorm(q), rho * stats::qnorm(y), (1 - rho^2)^(1 / 2),
    lower.tail = lower.tail, log.p = log.p
  )
}
