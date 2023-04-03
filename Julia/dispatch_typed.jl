# Julia also allows specifying types which makes the dispatch even more precise

fun(x::Int) = x * 100
fun(x::Float64) = x * 200

fun(x::Int, y::Int) = x * y
fun(x::Int, y::Float64) = x * y * 2

println(fun(5))
println(fun(5.))
println(fun(5, 5))
println(fun(5, 5.))
