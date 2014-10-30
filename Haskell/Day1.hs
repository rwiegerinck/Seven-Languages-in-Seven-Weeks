module Day1 where
        allEven1 :: [Integer] -> [Integer]
        allEven1 [] = []
        allEven1 (h:t) = if even h then h:allEven1 t else allEven1 t
        
        allEven2 :: [Integer] -> [Integer]
        allEven2 theList = [number | number <- theList, even number]
		
	reverseThisList :: [a] -> [a]
	reverseThisList [] = []
	reverseThisList (h:t) = reverseThisList t ++ [h]
	
	
	
	
	-- black, white, blue, yellow, red
	getCombinations :: [String] -> [(String, String)]
	colors = ["black", "white", "blue", "yellow", "red"]
	getCombinations colors = [(a, b) | a <- colors, b <- colors, a < b]
	
	--functie zonder parameter? Hoe? Niet mogelijk volgensmij?
	getChildhoodTable :: Integer -> [(Integer, Integer, Integer)]
	getChildhoodTable number = [(a, b, a*b) | a <- [1..12], b <- [1..12]]
	
	
	americaColors = ["blue", "green", "red"]
	colorTheMap = [(alabama, missisippi, georgia, tennessee, florida) | alabama <- americaColors, missisippi <- americaColors, georgia <- americaColors, tennessee <- americaColors, florida <- americaColors, missisippi /= tennessee, missisippi /= alabama, alabama /= tennessee, alabama /= missisippi, alabama /= georgia, alabama /= florida, georgia /= florida, georgia /= tennessee]