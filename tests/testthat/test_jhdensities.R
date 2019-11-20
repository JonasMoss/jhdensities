test_that("djh returns errors", {
  expect_error(djh(1.1, 1),
    regexp = "x is not a vector of elements between 0 and 1"
  )
  expect_error(djh(1, 0.1),
    regexp = "index is not an integer between 1 and 16"
  )
  expect_error(djh(1, 1, log = "x"),
    regexp = "log is not a logical scalar"
  )
})

test_that("pjh returns errors", {
  expect_error(pjh(1.1, 1),
    regexp = "q is not a vector of elements between 0 and 1"
  )
  expect_error(pjh(1, 0.1),
    regexp = "index is not an integer between 1 and 16"
  )
  expect_error(pjh(1, 1, log.p = "x"),
    regexp = "log.p is not a logical scalar"
  )
  expect_error(pjh(1, 1, lower.tail = "x"),
    regexp = "lower.tail is not a logical scalar"
  )
})

test_that("rjh returns errors", {
  expect_error(rjh(1.1, 1),
    regexp = "n is not a positive integer"
  )
  expect_error(rjh(1, 0.1),
    regexp = "index is not an integer between 1 and 16"
  )
})

test_that("djh*** is meaningfully defined for all indices", {
  for (index in INDICES) expect_true(is.numeric(djh(0.5, index)))
})

test_that("djh*** has the right formals for all indices", {
  for (index in INDICES) {
    fun <- parse(text = paste0("djh", index))[[1]]
    expect_identical(names(eval(call("formals", fun))), c("x", "log"))
  }
})

test_that("pjh*** is meaningfully defined for all indices", {
  for (index in INDICES) expect_true(is.numeric(pjh(0.5, index)))
})

test_that("pjh*** has the right formals for all indices", {
  for (index in INDICES) {
    fun <- parse(text = paste0("pjh", index))[[1]]
    expect_identical(
      names(eval(call("formals", fun))),
      c("q", "lower.tail", "log.p"),
      info = paste0("Index is ", index)
    )
  }
})

test_that("rjh*** is meaningfully defined for all indices", {
  for (index in INDICES) {
    expect_true(is.numeric(rjh(1, index)),
      info = paste0("Index is ", index)
    )
  }
})

test_that("rjh*** has the right formals for all indices", {
  for (index in INDICES) {
    fun <- parse(text = paste0("rjh", index))[[1]]
    expect_identical(names(eval(call("formals", fun))), c("n"),
      info = paste0("Index is ", index)
    )
  }
})
