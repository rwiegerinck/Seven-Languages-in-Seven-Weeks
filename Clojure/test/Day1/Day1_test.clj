(ns Day1.core-test
  (:require [clojure.test :refer :all]
            [Day1.Day1 :refer :all]))

(deftest bigtrue
  (is (true? (big "Hello World" 6)))
  (is (false? (big "Hello" 6)))
  (is (false? (big "" 6)))
  )


(run-tests)