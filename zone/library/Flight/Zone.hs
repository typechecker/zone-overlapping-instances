module Flight.Zone where

import Data.UnitsOfMeasure (u)
import Data.UnitsOfMeasure.Internal (Quantity(..))

import Flight.Units ()

newtype Altitude a u = Altitude (Quantity a u) deriving (Eq, Ord)
deriving instance Show (Quantity a u) => Show (Altitude a u)

data Zone a where
    Line :: Eq a => Altitude a [u| m |] -> Zone a

deriving instance Eq (Zone a)
deriving instance Show (Altitude a [u| m |]) => Show (Zone a)
