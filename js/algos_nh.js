
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

//var select = function(obj1, obj2, func) {
//  var results = [];
//
//  for (var i=0; i < obj1.length; i++) {
//    if (func(obj1[i], obj2[i])) {
//      results.push(obj1[i]);
//    }
//  }
//
//  return results;
//};
//

//var object01 = {name: "Steven", age: 54, sport: "soccer"};
//var object02 = {name: "Tamir", age: 54, sport: "basketball"};

//var findMatch = function(obj1, obj2) { return toString(obj1[x])===toString(obj2[x]);};
//
//var matcher = select(object01, object02, findMatch);
//console.log(matcher);


function matcher(obj1, obj2) {
  var results = [];

  for (var i=0; i < obj1.length; i++) {
    if ((obj1[i].toString()).match(obj2[i].toString())) {
      results.push(obj1[i]);
    }
  }

  return results;
};

var object01 = {name: "Steven", age: 54, sport: "soccer"};
var object02 = {name: "Tamir", age: 54, sport: "basketball"};

console.log(matcher(object01, object02))




console.log("\n")
console.log("Release 2 ============================================")




