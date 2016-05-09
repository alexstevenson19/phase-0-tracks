
console.log("Release 0 ============================================")
// write a function that selects the longest phrase.
// loop through the array and starting with index 0 compare it to the next value.
// follow basic outline of Max method, with longest updating to the longest word.


var animals = ["goat boy", "turtle", "cat", "elephant man", "zebra"];
var bikes = ["Cannondale", "Trek", "Giant", "LeMond", "Fuji"];
//var longest = [];

var max = function(array) {
  var longest = array[0];

  for (var i=0; i < array.length; i++) {
    if (array[i].length >= longest.length) {
      longest = array[i];
    }
  }

  return longest;
};

console.log(max(animals));
console.log(max(bikes));


console.log("\n")
console.log("Release 1 ============================================")
//write a function that takes two objects and checks to see if the objects share at least one key-value pair.
//Use the "select method" to loop through the Objects to compare the keys/value pairs. Store the matches in a new object?
//A slight adjustment, I will collect the keys of one of the objects in an array, and hopefully be able to iterate through the keys to get value comparisons.

var select = function(keyCollect, func) {
  var results = [];

  for (var i=0; i < keyCollect.length; i++) {
    if (func(keyCollect[i])) {
      results.push(keyCollect[i]);
    }
  }

  return results;
};




function kCollector(obj1, obj2) {
  var results = [];

  for (var i=0; i < obj1.length; i++) {
      Object.keys(obj1);;
  }
  return Object.keys(obj1);
  //return results;
};

var object01 = {name: "Steven", age: 54, sport: "soccer"};
var object02 = {name: "Tamir", age: 54, sport: "basketball"};

keyCollect = [];
keyCollect = kCollector(object01, object02);
console.log(keyCollect);

//console.log(object01[keyCollect[2]]);

var findMatch = function(x) { return (object01[x]) == object02[x];};
//
var matcher = select(keyCollect, findMatch);
console.log(matcher);




console.log("\n")
console.log("Release 2 ============================================")
//Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// find out what random command JS has. Use that to generate a random word length, and probably unicode numbers for letters 97 -122.
// in a function the number from the driver code will be passed in and will determine the array length.
// make an empty array to collect the new words.
// loop through a word generator x number of times to make random words (of various lengths, maybe just one letter longer each time up to 10) and push into the array.      
// print the resulting array.join   String.fromCharCode(Math.random()*(122 - 97) + 97);

var wordCollect = []

function wordmaker(nums) {
  var output = []
  for (var n = 0; n < nums; n++){
    // make a random number
    var wordlength = Math.floor(Math.random() * (11 - 1)) + 1;
    console.log(wordlength);
    var unicodeArr = []
    // make a word of 7 characters. ie loop 7 times to make 7 random numbers between 97 and 122
    for (var i = 0; i < wordlength; i++){
      var uni = Math.floor(Math.random() * (122 - 97)) + 97;
      unicodeArr.push(uni);
    //      console.log(unicodeArr);
    }
    output.push(unicodeArr)
//    wordCollect.push(unicode_arr);
  }
  return(output);
}

function convertToString(array){
  var string = ''
  //console.log('starting array', array)  //print to check values
  for (var charIndex = 0; charIndex < array.length; charIndex++){
    //console.log(array[charIndex], String.fromCharCode(array[charIndex]))    //print to check values

    //String.fromCharCode(array[charIndex]) is the thing we want to save
    // string <- the thing we want to make what we want and return
    // finalPhrase += finalPhrase
    string += String.fromCharCode(array[charIndex])
  }  
  //console.log('finished array', array, string)   //print to check values
  return string
}


//driver code and convert=======================================
var count = 5

var chars = wordmaker(count);
//console.log(chars);   //print to check values

var wordConvert = []

for (var wordIndex = 0; wordIndex < chars.length; wordIndex++){
  wordConvert.push(convertToString(chars[wordIndex]))    
}

// final print in string form.
console.log(wordConvert.join(' '));
console.log(max(wordConvert));

