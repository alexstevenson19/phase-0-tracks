console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

function buttonBackground(event) {
  event.target.style.backgroundColor = "green";
}

var firstButton = document.getElementById("buttonOne"); 
var secondButton = document.getElementById("buttonTwo");

firstButton.addEventListener("click", buttonBackground);
secondButton.addEventListener("click", buttonBackground);
  
