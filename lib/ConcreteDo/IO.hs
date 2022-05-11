{-# LANGUAGE ImportQualifiedPost #-}
module ConcreteDo.IO where

import Prelude (IO)
import Prelude qualified
import Control.Monad qualified

(>>=) :: IO a -> (a -> IO b) -> IO b
(>>=) = (Prelude.>>=)

(>>) :: IO a -> IO b -> IO b
(>>) = (Prelude.>>)

fmap :: (a -> b) -> IO a -> IO b
fmap = (Prelude.fmap)

(<*>) :: IO (a -> b) -> IO a -> IO b
(<*>) = (Prelude.<*>)

join :: IO (IO a) -> IO a
join = Control.Monad.join

