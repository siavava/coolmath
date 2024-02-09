module MyLib (
    someFunc
  , module MyLib.SetTheory
) where

import MyLib.SetTheory (
      cartesian
    , powerSet
  )

someFunc :: IO ()
someFunc = putStrLn "someFunc"
