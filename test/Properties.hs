{-# LANGUAGE TemplateHaskell #-}

module Main where

import qualified Boilerplate as B

import Test.QuickCheck
import Test.QuickCheck.Test (isSuccess)
import Control.Monad        (unless)
import System.Exit          (exitFailure)

import TestHelper

prop_Hello :: Property
prop_Hello = B.greeting === "hello world" -- Okay, not much of a property test.


return [] -- Don't ask.
--main :: IO Bool
main = do
  result <- $forAllProperties quickCheckResult
  unless (result) $ exitFailure -- Needed otherwise QC always exits with 0.
