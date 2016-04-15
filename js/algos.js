
// I also started my brainstorms on notebook paper. I'll transcribe the basic ideas below.

// build an array to test, enter that array into the function

// in the function, assign the first string in the array to a variable.

// iterate through the array: compare the '0 index' variable to the next index in the array. If the next index is longer, it takes over the variable.
// if the '0' index variable is longer, it stays the same and is compared to the next index in the array.
// at the end print the last value of the variable, which should be the longest string.

var animals = ["goat", "turtle", "cat", "elephant", "zebra"];

//longAnimals = [animals[0]];
//console.log
//longString = animals[0];

//console.log(longString);

for (var i = 0; i < animals.length; i++) {

	if (animals[0].length < animals[1].length) //&& (animals.length > 1))
	 		{(animals.shift());
	 			console.log(animals)}

	 	else //((animals[0] > animals[1]) && (animals.length > 1))  
	 		 {(animals.splice(1, 1));
	 		 console.log(animals)}





	// if (longString.length < animals[i].length) {(longAnimals.push(animals[i]))
	// 	console.log(longAnimals);
	// 			// another if or case statement. if array[0] is < array[1], then delete array[0]
	// 			// else delete array[1].   or make it a function?
	// 	if ((longAnimals[0] < longAnimals[1]) && (longAnimals.length > 1))
	// 		{(longAnimals.shift());
	// 			console.log(longAnimals)}

	// 	else ((longAnimals[0] > longAnimals[1]) && (longAnimals.length > 1))  
	// 		 {(longAnimals.pop());
	// 		 console.log(longAnimals)}
	// }

	// else {console.log("Test next animal.");}
//		}
// console.log(longString.length > animals[i].length);
  }



  if (animals[0].length < animals[1].length)
  	{(delete animals[0]);}
  else {(delete animals[1]);}

  console.log(animals[0]);

