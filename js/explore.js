
// assign a word to a variable

//var str = "hello";

// put the variable through a loop, but count down from the end to the beginning
// put the loop in a function so you can use it with driver code

//conditionTest = true;

//if (1==1) {

function reverser(str) {

for (var i = str.length; i >= 0; i--) {
	console.log(str[i]);
};
}
// else {console.log("The reverser is out of order today.")}
//}

// driver code
reverser("United States")
