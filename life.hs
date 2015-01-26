-- Conway's Game of Life by Stephen Boyd
-- Haskell Version

import Control.Monad
import Data.Array
import System.IO
import System.Random

width = 60
height = 30

thisList = replicateM height (replicateM width randomIO :: IO [Bool])

printGrid grid = mapM_ printLine grid
printLine line = do
  mapM_ printCell line
  putStr "\n"
printCell cell = if cell == True
                then putStr "█"
                else putStr " "

main :: IO ()
main = do
  otherList <- thisList
  printGrid otherList

