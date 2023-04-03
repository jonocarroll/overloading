## S4 can dispatch based on function signature

# assigned to suppress printing the function name
ftmp <- setGeneric("fun", function(x, y, ...) standardGeneric("fun"))

setMethod("fun", c("numeric", "ANY"), function(x, y) {
  x * 100
})

setMethod("fun", c("numeric", "numeric"), function(x, y) {
  x * y
})

fun(5)
fun(5, 5)
