
// write a function that selects the longest phrase.
// loop through the array and starting with index 0 compare it to the next value.
// delete the smallest value. If they are equal .shift out one of the values into a final array.


console.log("Release 0 ============================================")



var animals = ["goat boy", "turtle", "cat", "elephant man", "zebra"];
var bikes = ["Cannondale", "Trek", "Giant", "LeMond", "Fuji"];
//var longest = [];


var max = function(array) {
  var biggest = array[0];

  for (var i=0; i < array.length; i++) {
    if (array[i].length >= biggest.length) {
      biggest = array[i];
    }
  }

  return biggest;
};

console.log(max(animals));
console.log(max(bikes));

//console.log(max(longest));
console.log("\n")
console.log("Release 1 ============================================")




console.log("\n")
console.log("Release 2 ============================================")


