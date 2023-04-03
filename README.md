# Comparing Function Overloading 

In each of these cases, attempt to call the same function with a single argument 
and with two arguments. The first should result in the argument times 100, the second 
should result in the product of the arguments

## Haskell

Haskell has pattern matching to 'overload' functions, but doesn't deal well with 
optional arguments (potentially via `Data.Maybe`). Since the overall signature shape 
must be constant, this passes either a length-1 list or a length-2 list.

```
$ cd haskell
$ ghc dispatch.hs -o dispatchHaskell
$ ./dispatchHaskell
# 500.0
# 25.0

$ cd ..
```

## Fortran90

Fortran supports function overloading via `interface` so we can call different functions 
with different function signatures using the same 'call'. This calls a function with one 
argument and a function with two.

```
$ cd f90
$ gfortran dispatch.f90 -o dispatchFortran
$ ./dispatchFortran
#   500.000000
#   25.0000000

$ cd ..
```

## R S3/S4

S3 can dispatch based on class of the first argument, so this passes a number (length-1 vector) 
and a list containing two numbers.

```
$ cd R
$ Rscript dispatchS3.R   
# [1] 500
# [1] 25
```

S4 can dispatch based on the entire signature, so this defines a function with two numeric 
arguments and another with one numeric argument, one missing argument.

```
$ Rscript dispatchS4.R   
# [1] 500
# [1] 25

$ cd ..
```

## Julia

Julia has simple function declaration and dispatch depending on the entire signature, 
so this defines two functions; one with one argument, one with two.

```
$ cd Julia
$ julia dispatch.jl
# 500
# 25
```

Julia can also be more specific with the arguments. Here type annotations are added 
to further specialise the functions.

```
$ julia dispatch_typed.jl
# 500
# 1000.0
# 25
# 50.0

$ cd ..
```