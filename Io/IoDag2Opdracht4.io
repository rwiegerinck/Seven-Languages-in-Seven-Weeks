List myAverage := method(
	if((size == 0), return(nil) )
	
	totalValue := 0;
	for(i, 0, size -1, 
		totalValue = totalValue + at(i);
	);
	average := (totalValue / size);
	return(average);
);

theList := list(
	150,
	100,
	200,
	250
);

theList myAverage() println();