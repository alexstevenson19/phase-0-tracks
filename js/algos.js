
// This is the first time I haven't completed a challenge before the deadline, so I'm not quite sure what to do?
// I will send this to GitHub and submit my link, but is there a follow-up for when it is complete, if I ever get unstuck?
// Javascript is something I clearly don't have much of a handle on with syntax and commands.


//===============================================================
// Release 0

// I also started my brainstorms on notebook paper. I'll transcribe the basic ideas below.

// build an array to test, enter that array into the function

// in the function, assign the first string in the array to a variable.

// iterate through the array: compare the '0 index' variable to the next index in the array. If the next index is longer, it takes over the variable.
// if the '0' index variable is longer, it stays the same and is compared to the next index in the array.
// at the end print the last value of the variable, which should be the longest string.


console.log("Release 0 ============================================")

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

// second idea: collect the keys into a new array of strings. ex. keyArray = ["name", "age", "pets", etc]
// Then iterate through that array to plug back into the Objects/hashes to find matches. i.e. Does object["name"-from keyArray]==object2["name"]
// if there is a match the results will be printed for example "They both have a" + pet + dog.

// first set up Objects to compare

console.log("Release 1 ============================================")

var object01 = {name: "Steven", age: 54, sport: "soccer"};
var object02 = {name: "Tamir", age: 54, sport: "basketball"};



// declare an array to collect the key string in.
var keyCollect = []


// need to find a way to pull out the key string. Object.keys(hash name)[i]
var testKey1 = Object.keys(object01)[0];
var testKey2 = Object.keys(object02)[1];
var testKey3 = Object.keys(object01)[2];

// collecting the values in a loop gave me 
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

// this is what I want from the for loop above, but nothing in js seems to be working for me. I'm not even able to get error messages??
console.log(object01["name"] == object02["name"])


// extra things from Release 01 are below that might be useful============================

// want to find out how to determine a hash length.
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

//=======================================================================
// Release 2 Random word generator

// find out what random command JS has. Use that to generate a random word length, and probably unicode numbers for letters 97 -122.
// in a function the number from the driver code will be passed in and will determine the array length.
// make an empty array to collect the new words.
// loop through a word generator x number of times to make random words (of various lengths, maybe just one letter longer each time up to 10) and push into the array.      
// print the resulting array   String.fromCharCode(Math.random()*(122 - 97) + 97);


console.log("Release 2 ============================================")

// set number argument x (ex. 3)

var words = 3

// get random word/number lengths (y)

var word_length = []


for (var i = 0; i < words; i++){
	var y = Math.floor(Math.random() * (10 - 1)) + 1;
	//console.log(y);  //printed to screen to check that I was getting values
	word_length.push(y);
	//console.log(word_length);  //printed to screen to check that I was getting values
}

console.log(word_length);

//  now I have y-length random numbers. between 97 and 122. Store the numbers in an array (set a min (3+2) and max(3*10 - 2) length). ex.[ [97, 114, 103], [122, 100, 103, 99]]
// (old idea)loop x number of times to
var unicode_arr = []
var word_collect = []


for (var i = 0; i < word_length.length; i++){

	for (var i = 0; i < (word_length[i]); i++){
		var uni = Math.floor(Math.random() * (122 - 97)) + 97;
		unicode_arr.push(uni);
		console.log(unicode_arr);
	}
	word_collect.push(unicode_arr);
	console.log(word_collect)

 }





// iterate through array to convert numbers to letters. 












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
