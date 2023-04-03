# Julia has a straightforward function definition
#  and overloads based on signature

fun(x) = x * 100
fun(x, y) = x * y

println(fun(5))
println(fun(5, 5))
