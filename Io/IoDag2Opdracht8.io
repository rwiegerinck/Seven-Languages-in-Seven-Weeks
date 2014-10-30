randNumber := (Random value( 99 ) + 1) floor();
standardIO := File standardInput();
previousNumber := 0;

10 repeat(
	"Raad het nummer tussen 1 en 100!" println();

	guessing := standardIO readLine() asNumber();

	if(guessing == randNumber,
		"Correct!" println();
		break;
	);
	
	if(randNumber > guessing, 	
		if((randNumber - guessing) >= (randNumber - previousNumber),
			"Kouder!" println(), "Warmer!" println()
		);, 
		if((randNumber - guessing) < (randNumber - previousNumber),
			"Kouder!" println(), "Warmer!" println()
		);
	);
	//50-10=40  50-20=30        50-60=-10 50-70=-20

	previousNumber = guessing;
);

randNumber println();