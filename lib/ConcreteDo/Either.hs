{-# LANGUAGE ImportQualifiedPost #-}
module ConcreteDo.Either where

import Prelude (Either)
import Prelude qualified
import Control.Monad qualified

(>>=) :: Either e a -> (a -> Either e b) -> Either e b
(>>=) = (Prelude.>>=)

(>>) :: Either e a -> Either e b -> Either e b
(>>) = (Prelude.>>)

fmap :: (a -> b) -> Either e a -> Either e b
fmap = (Prelude.fmap)

(<*>) :: Either e (a -> b) -> Either e a -> Either e b
(<*>) = (Prelude.<*>)

join :: Either e (Either e a) -> Either e a
join = Control.Monad.join

