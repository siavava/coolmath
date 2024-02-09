module Main where

import qualified MyLib (someFunc, cartesian, powerSet)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc

  let list1 = [1, 2] :: [Int]
  let list2 = [3, 4] :: [Int]

  print $ MyLib.cartesian list1 list2
  print $ MyLib.powerSet (list1 ++ [2])
