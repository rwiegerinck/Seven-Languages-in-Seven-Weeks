(ns Day1.Day1)


(defn big [st n]
  (> (count st) n)
  )

(println (big "hello world" 6))
(println (big "hello" 6))




(defn collection-type [col]
  (if (list? col) 
    :list
    (if (map? col)
      :map
      (if (vector? col)
        :vector)
      )
    )
  )


(def aList (list 1 2))
(def aMap {:a 1, :b 2})
(def aVector [1 2])

(println (collection-type aList))
(println (collection-type aMap))
(println (collection-type aVector))