

//RELEASE 0: CREATE AN ARRAY

var horseName = ["Ed", "Mitts", "Beauty", "Sea"];
var horseColor = ["black", "white", "brown", "pink"];
// console.log(horseName);
// console.log(horseColor);

horseName.push("Biscut");
horseColor.push("silver");

// console.log(horseName);
// console.log(horseColor);




//RELEASE 1: OBJECT 
// loop through arrays of same length, and match the same index number in each in a new Object(hash)
// the horse name acts as the key, the horse color acts as the value.

console.log("==========================================\n");

var horse = {};

for (var i = 0; i < horseName.length; i++) {
    horse[horseName[i]] = horseColor[i];
}
   console.log(horse);




//RELEASE 2: CONSTRUCTOR
// make a car constructor. Assign initial attributes. Also add some functions to the car constructor.
console.log("==========================================\n");

function Car(brand, seats, allWheelDrive){
  
  this.brand = brand;
  this.seats = seats;
  this.allWheelDrive = allWheelDrive;
  
  console.log("Building a new car");
  
  this.jump = function(){console.log("The " + brand + " is jumping over a drawbridge.");};
  this.seatChange = function(){this.seats = 3;};
}


var newCar1 = new Car("Honda", 4, true);
var newCar2 = new Car("Ford", 4, false);
var newCar3 = new Car("BMW", 2, true);


console.log(newCar1);
console.log(newCar2);
console.log(newCar3);

newCar2.jump();

newCar3.seatChange();

console.log(newCar3);

console.log("==========================================\n");

