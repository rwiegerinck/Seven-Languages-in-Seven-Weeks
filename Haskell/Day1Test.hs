module Day1_Test where

import Day1
import Test.HUnit

testAllEven1 = TestCase $ assertEqual "even numbers" [2, 4, 6] (allEven1 [1, 2, 3, 4, 5, 6])
testAllEven1Empty = TestCase $ assertEqual "even numbers empty empty" [] (allEven1 [])
testAllEven1WithOneValue = TestCase $ assertEqual "even numbers with only one" [2] (allEven1 [2])
testAllEven1WithOneOddValue = TestCase $ assertEqual "even numbers with only one" [] (allEven1 [1])

main = runTestTT $ TestList [testAllEven1, testAllEven1Empty, testAllEven1WithOneValue, testAllEven1WithOneOddValue]