## S3 can dispatch based on class of the first argument
fun <- function(x) {
  UseMethod("fun")
}

fun.default <- function(x) { 
  x * 100
}

fun.list <- function(x) {
  x[[1]] * x[[2]]
}

fun(5)
fun(list(5, 5))
