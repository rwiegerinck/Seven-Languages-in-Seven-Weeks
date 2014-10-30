TwoDList := List clone;

//Blijkbaar moet y het aantal plaatsen in de hoofd list zijn. X de plaatsen in elk sublist. (verwarrend, je zou denken dat het net andersom is)
TwoDList dim := method( x, y, 
	setSize(y);
	for(i, 0, y-1, 
		atPut(i, list() setSize(x))
	);
);

TwoDList set := method( x, y, value, 
	at(y) atPut(x, value);
);

TwoDList get := method(x, y,
	return (at(y) at(x));
);


//make the list by using the new dim function
theList := TwoDList dim(3, 3);

//fill it by setting items by using the new set function
theList set(0, 0, "A");
theList set(1, 0, "B");
theList set(2, 0, "C");
theList set(0, 1, "D");
theList set(1, 1, "E");
theList set(2, 1, "F");
theList set(0, 2, "G");
theList set(1, 2, "H");
theList set(2, 2, "I");

//print the list
theList println();
 
//get the items by using the new get function
theList get(0, 0) println();
theList get(1, 1) println();
theList get(2, 2) println();

fileData := File open("theTwoDList.txt");

fileData write(theList serialized());
fileData close();
"\n2d List weggeschreven! " println();

"\n2d List wordt aangepast! " println();

theList set(0, 0, "X");
theList set(1, 0, "X");
theList set(2, 0, "X");
theList set(0, 1, "Y");
theList set(1, 1, "Y");
theList set(2, 1, "Y");
theList set(0, 2, "Z");
theList set(1, 2, "Z");
theList set(2, 2, "Z");


"\nDe aangepaste 2d list:" println();
theList println();

"\nBij het lezen: De oude uitgelezen 2d array:" println();
readData := doFile("theTwoDList.txt");
readData println();
 