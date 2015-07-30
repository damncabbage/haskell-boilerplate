module Main where

import qualified Boilerplate as B

import Test.Hspec
import TestHelper

main :: IO ()
main = hspec $ do

  it "says hello" $ do
    B.greeting `shouldBe` "hello world"
