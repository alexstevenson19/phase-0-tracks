//Release 0

// make two arrays for colors and horse names

var colors = ["blue", "red", "green", "orange"];
  
var horseNames = ["Tony", "Brevit", "Bojack", "Ed"];

// add additional elements into existing arrays
colors.push("yellow")
horseNames.push("Joe")

// print the updated arrays to the screen
console.log(colors, horseNames)



//Release 1

// make an empty hash to collect the horse and color info
var matcher = {};

// make a loop that will run for the lenght of the array to match the index contents together.
for (var i = 0; i < horseNames.length; i++) {
  matcher[horseNames[i]] = colors[i]}
  
console.log(matcher)   // print the hash to screen with new contents




//Release 2

// set up a new constructor function for our subject, cars
function Car(model,color,isAutomatic) {
  console.log("On the assembly line:", this)  //initialization message

  // make 'instance' values of our parameters
  this.model = model;
  this.color = color;
  this.isAutomatic = isAutomatic;
  
  // make functions for our cars
  this.shift = function() {
    if(this.isAutomatic) {
      console.log("Enjoy driving right now!");
    } else {
      console.log("Back to driving school to learn how to drive stick!");
    }
  };  
  
  this.horn = function() {
    console.log("beep beep")
  };
}


// test the new function

var alexCar = new Car("Honda","Blue", false);
console.log(alexCar)
alexCar.horn();
alexCar.shift();

var jaqCar = new Car("Audi", "Black", true);
console.log(jaqCar);
jaqCar.shift()

