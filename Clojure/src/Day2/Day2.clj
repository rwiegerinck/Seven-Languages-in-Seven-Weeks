(ns Day2.Day2)

(defmacro unless [test ifbody elsebody]
  (list `if (list `not test) 
        ifbody
        elsebody)
  )

(unless
  true
  (println "IF")
  (println "ELSE")
  )

(unless
  false
  (println "IF")
  (println "ELSE")
  )


(defprotocol Dier
  
  (getName [this name])
  (barkName [this])
  )

(defrecord Hond [name]
  Dier
  
  (getName [this name]
    (str "Hello, my name is " (:name this))
    )
  
  (barkName [this]
    (str "Bark Bark")
    )
  )

(def dino (Hond. "Dino"))

(println (getName dino "Ben"))
(println (barkName dino))








