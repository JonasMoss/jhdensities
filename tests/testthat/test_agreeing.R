test_that("Integral of djh and pjh agree at 0.5", {
  for (index in INDICES) {
    integral <- integrate(paste0("djh", index), lower = 0, upper = 0.5)$value
    real <- eval(call(paste0("pjh", index), 0.5))
    expect_equal(integral, real,
      info = paste0("Index is ", index)
    )
  }
})

test_that("Densities integrate to 1", {
  for (index in INDICES) {
    integral <- integrate(paste0("djh", index), lower = 0, upper = 1)$value
    expect_equal(integral, 1,
      tolerance = .0001,
      info = paste0("Index is ", index)
    )
  }
})

test_that("Distribution functions equals 1 at 1", {
  for (index in INDICES) {
    expect_equal(eval(call(paste0("pjh", index), 1)), 1,
      info = paste0("Index is ", index)
    )
  }
})

test_that("log(djh) and djh(log = TRUE) agree at 0.5", {
  for (index in INDICES) {
    a <- eval(call(paste0("djh", index), log = TRUE, x = 0.5))
    b <- log(eval(call(paste0("djh", index), x = 0.5)))
    expect_equal(a, b, info = paste0("Index is ", index))
  }
})

test_that("log(pjh) and pjh(log.p = TRUE) agree at 0.5", {
  for (index in INDICES) {
    a <- eval(call(paste0("pjh", index), log.p = TRUE, q = 0.5))
    b <- log(eval(call(paste0("pjh", index), q = 0.5)))
    expect_equal(a, b, info = paste0("Index is ", index))
  }
})

test_that("1 - pjh and pjh(lower.tail = FALSE) agree at 0.5", {
  for (index in INDICES) {
    a <- eval(call(paste0("pjh", index), lower.tail = FALSE, q = 0.5))
    b <- 1 - eval(call(paste0("pjh", index), q = 0.5))
    expect_equal(a, b, info = paste0("Index is ", index))
  }
})
