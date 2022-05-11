{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE QualifiedDo #-}
module Main (main) where
import ConcreteDo.IO qualified as IO
import ConcreteDo.Either qualified as Either

-- main :: IO ()
-- main = do
--     msg <- getLine
--     putStrLn msg "oops extra argument"

main :: IO ()
main = IO.do
    msg <- getLine
    putStrLn msg "oops extra argument"