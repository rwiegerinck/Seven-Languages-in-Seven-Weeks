//sla de oude deling methode op in een nieuwe slot voor Number genaamd "oldDivision"
Number setSlot(
	"oldDivision",
	Number getSlot("/")
);

//zet de nieuwe code in de "/" slot van Number. Bij geval van geen 0 doe oude deling
Number setSlot("/",
	method(denominator,
		if ((denominator == 0), 
			return (0);
		);
		return(self oldDivision(denominator));
	)
);

(16 / 0) println();
(16 / 4) println();
(16 / 2) println();