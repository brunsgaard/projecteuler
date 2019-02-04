#!/usr/bin/env stack
-- stack --install-ghc runghc


testdiv :: Int -> Bool
testdiv n = mod n 3 == 0 || mod n 5 == 0

euler1 n = 
  let
    x = [ x | x <- [1..n-1], testdiv x] 
  in
    foldl (+) 0 x


main :: IO ()
main = do
  putStrLn . show $ euler1 1000
