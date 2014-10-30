fibonacci := method( theXthNumber,
	if(((theXthNumber == 0) or (theXthNumber == 1)), 
		return (1);
	);
	value1 := 1;
	value2 := 1;
	tempVal := value1+value2;
	
	for( i, 2, theXthNumber, 1
		tempVal = (value1 + value2);
		value1 = value2;
		value2 = tempVal;
	);
	
	return (tempVal);
)

fibonacci(0) println();
fibonacci(1) println();
fibonacci(2) println();
fibonacci(3) println();
fibonacci(4) println();
fibonacci(5) println();
fibonacci(6) println();
fibonacci(7) println();