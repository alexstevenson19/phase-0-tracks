
// write a function that selects the longest phrase.
// loop through the array and starting with index 0 compare it to the next value.
// delete the smallest value. If they are equal .shift out one of the values into a final array.


console.log("Release 0 ============================================")



var animals = ["goat boy", "e123hant man", "turtle", "cat", "elephant man", "zebra"];
var longest = [];

for (var i = 0; i < animals.length; i++) {

	if (animals[0].length < animals[1].length) //&& (animals.length > 1))
	 		{(animals.shift());
	 			console.log(animals);}
	else if (animals[0].length > animals[1].length)  
	 		 {(animals.splice(1, 1));
	 		 console.log(animals);}
	else {longest.push(animals.shift);}
  }


  if (animals[0].length < animals[1].length)
  	longest.push(animals.pop());
// 	{(delete animals[0]);}
  else
  	longest.push(animals.shift());
//  else {(delete animals[1]);}

console.log(animals[0]);
console.log(longest);





