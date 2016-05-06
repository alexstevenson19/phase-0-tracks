
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

  var horse = {};
  for (var i = 0; i < horseName.length; i++) {
    horse[horseName[i]] = horseColor[i];
  }
   console.log(horse);

