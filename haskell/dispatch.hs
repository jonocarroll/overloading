-- Haskell has pattern matching for functions. This is similar to Julia but 
--  since it's strongly typed this can only dispatch on the _pattern_ of 
--  the argument, not the class/type

fun :: [Float] -> Float
fun [] = 0.0
fun (arg1:[]) = arg1 * 100.0
fun (arg1:arg2) = arg1 * (head arg2)

main = do
  print (fun [5.0])
  print (fun [5.0, 5.0])
