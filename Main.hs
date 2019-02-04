#!/usr/bin/env stack
-- stack --install-ghc runghc

euler1:: Int -> Int
euler1 n = 
  let
    testdiv n = mod n 3 == 0 || mod n 5 == 0
    x = [ x | x <- [1..n-1], testdiv x] 
  in
    foldl (+) 0 x


main :: IO ()
main = do
  putStrLn . show $ euler1 1000
