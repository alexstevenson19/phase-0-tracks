
//===============================================================
// Release 0

// I also started my brainstorms on notebook paper. I'll transcribe the basic ideas below.

// build an array to test, enter that array into the function

// in the function, assign the first string in the array to a variable.

// iterate through the array: compare the '0 index' variable to the next index in the array. If the next index is longer, it takes over the variable.
// if the '0' index variable is longer, it stays the same and is compared to the next index in the array.
// at the end print the last value of the variable, which should be the longest string.


var animals = ["goat boy", "turtle", "cat", "elephant man", "zebra"];


for (var i = 0; i < animals.length; i++) {

	if (animals[0].length < animals[1].length) //&& (animals.length > 1))
	 		{(animals.shift());
	 			console.log(animals)}

	else //((animals[0] > animals[1]) && (animals.length > 1))  
	 		 {(animals.splice(1, 1));
	 		 console.log(animals)}
  }



  if (animals[0].length < animals[1].length)
  	{(delete animals[0]);}
  else {(delete animals[1]);}

  console.log(animals[0]);



//=====================================================================
// Release 1

// first idea (that didn't work):
// loop in a loop. In the first Object/hash, key value pair, have it iterate through second hash for a match.
//                 Then the next key value pair, iterate through, etc.

// more details, first match the key. If there is a match, compare the values.

// 

var object01 = {name: "Steven", age: 54, sport: "soccer"};
var object02 = {name: "Tamir", age: 54, sport: "basketball"};


// second idea: collect the keys into a new array.
// then iterate through that array for the objects to find matches

var keyCollect = []


// need to find a way to pull out the key string. Object.keys(hash name)[i]
var testKey1 = Object.keys(object01)[0];
var testKey2 = Object.keys(object02)[1];
var testKey3 = Object.keys(object01)[2];


keyCollect.push(testKey1, testKey2, testKey3);

// none of my for loops seem to do anything? At this point I will just manually do the iteration so you can see my idea.
for (var i = 0; i < object01.length; i++){
	keyCollect.push(Object.keys(object01));
}

console.log (keyCollect);


for (var i = 0; i < object01.length; i++){
	if (object01[keyCollect[i]] == object02[keyCollect[i]]){
		console.log("There is" + i + "match(es)");
	}
}

console.log(object01["name"] == object02["name"])










// need to find out how to determine a hash length.
keySize = Object.keys(object01).length;

for (var i = 0; i < object01.length; i++) {

	if (object01[i] == object02[i]) {
		console.log (object01[i]);
	}
	else 
		{console.log("no matches");}
  }




//.includes()
//console.log(object01.split(" "));
console.log(testKey1 == testKey2);
console.log(keySize);
console.log(object01[1]==object02[1]); 
/*

function keymatcher(ob1, ob2){
	for
}

var matches = [];

for (var i = 0; i < keySize; i++) {

if (object01[0]==object02[i])
  	{matches.push([object02[i]]);}
  else
  	{console.log("no matches");}
}

console.log(matches);

*/







//=========================================================
// Release 0 old code below


//longAnimals = [animals[0]];
//console.log
//longString = animals[0];

//console.log(longString);


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
