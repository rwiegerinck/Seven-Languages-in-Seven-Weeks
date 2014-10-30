module Main where
import Data.List

sortThisList :: (Ord a) => [a] -> [a]
sortThisList = foldr insert []

sortWithFunction [] func = []
sortWithFunction list func = [func list] ++ sortWithFunction [x | x <- list, x /= func list] func

hollaHollaGetDolla :: String -> Double
hollaHollaGetDolla theValue = read (filter(`elem` '.':['0'..'9']) theValue)::Double

printBy3 x = [x, x + 3..]
printBy5 x = [x, x + 5..]
printBy8 x y = zipWith (+) (printBy3 x) (printBy5 y)

sliceInHalf = (/ 2)

addNewLine = (++ "\n")