is_valid_index <- function(x) {
  if (!assertthat::is.count(x)) {
    return(FALSE)
  }
  if (all(x <= 16) & all(x >= 0)) {
    return(TRUE)
  }
  FALSE
}

attr(is_valid_index, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not an integer between 1 and 16")
}

is_valid_input <- function(x) {
  if (!is.numeric(x)) {
    return(FALSE)
  }
  all(x <= 1 & x >= 0)
}

attr(is_valid_input, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not a vector of elements between 0 and 1")
}

is_logical_scalar <- function(x) length(x) == 1L & is.logical(x)

attr(is_logical_scalar, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not a logical scalar")
}

is_positive_integer <- function(x) {
  if (!assertthat::is.count(x)) {
    return(FALSE)
  }
  x > 0
}

attr(is_positive_integer, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not a positive integer")
}
