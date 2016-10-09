module InversionSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Inversion 

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "inversions" $ do
    it "returns sorted list and n choose k" $ do
      inversions ([3,2,1], 3) `shouldBe` ([1,2,3], 3) 
