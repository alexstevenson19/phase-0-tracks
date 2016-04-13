
// assign a word to a variable

//var str = "hello";

// put the variable through a loop, but count down from the end to the beginning
// put the loop in a function so you can use it with driver code

conditionTest = 2==3;  // and a condition test so the reverser works when 'true'
						// add an if statement within the function to print the result or error message

function reverser(str) {

for (var i = str.length; i >= 0; i--) {
	if (conditionTest){
	console.log(str[i]);}
	else {console.log("The Reverser is out of order, run for your lives!!")}

};
}


// driver code to call the function
reverser("United States")
