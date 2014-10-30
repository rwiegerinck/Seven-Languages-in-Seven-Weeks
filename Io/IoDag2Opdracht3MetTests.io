addTwoDimentionalArrays := method( theTwoDList,
	retVal := 0;
	//numerator, numerator startvalue, max value, thingtodo
	for(i, 0, theTwoDList size -1, 
		for(j, 0, theTwoDList at(i) size -1,
			retVal = retVal + theTwoDList at(i) at(j);
		)
	)
	return(retVal);
);

2DList := list(
	list(20, 50, 30), //100
	list(10, 80, 10), //100
	list(40, 15, 55)  //110
);

addTwoDimentionalArrays(2DList) println();

/**
 * Testcase for List Functions
 */
listTestCase := UnitTest do(
	setUp := method(
		2DList := list(
			list(10, 20, 30), //60
			list(40, 50, 60), //150
			list(70, 80, 90)  //240
		);
	)

	test_addTwoDimentionalArrays := method(
		assertEquals(450, addTwoDimentionalArrays(2DList))
	)

	test_addTwoDimentionalArraysWithEmptyList := method(
		assertEquals(0, addTwoDimentionalArrays(list()))
	)
	
	test_addTwoDimentionalArraysWithEmptyListInList := method(
		assertEquals(0, addTwoDimentionalArrays(list(list(),list(),list())))
	)
	
	test_addTwoDimentionalArraysWithNegativeNumbers := method(
		assertEquals(-450, addTwoDimentionalArrays(list(list(-10, -20, -30),list(-40, -50, -60),list(-70, -80, -90))))
	)
	
	test_addTwoDimentionalArraysWithNegativeAndPositiveNumbers := method(
		assertEquals(50, addTwoDimentionalArrays(list(list(10, -20, 30),list(-40, 50, -60),list(70, -80, 90))))
	)
)

FileCollector run
DirectoryCollector run