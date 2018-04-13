-- Solve the Heat Equation @mino2357

module Main where
import Lib

main :: IO ()
main = do
  -- 函数適用
  print $ List.foldr ($) initX (replicate 10000 stepDev)
  print $ List.foldr ($) initX (replicate 10000 stepDev')
  --mapM_ print $ R.toList $ List.foldr' ($) u (replicate 100 timeDev)
  
  -- 函数合成 実行注意
  --mapM_ print $ R.toList $ (List.foldr' (.) id (replicate 1000 timeDev)) u
  print $ (List.foldr (.) id (replicate 10000 stepDev)) initX
  print $ (List.foldl (.) id (replicate 10000 stepDev)) initX
  print $ (List.foldl' (.) id (replicate 10000 stepDev)) initX
  print $ (List.foldr (.) id (replicate 10000 stepDev')) initX
  print $ (List.foldl (.) id (replicate 10000 stepDev')) initX
  print $ (List.foldl' (.) id (replicate 10000 stepDev')) initX
