
// write a function that reverses a string. ex function('hello') returns olleh

// I know that we can count down. I can use the index number from the end to go backwards is one solution.
// Since the charactes are indexed I will countdown from the highest index number to the lowest to go in reverse order.
// To print on one line I will put my iterated letters in a new array so they are in reverse order as they are being called.
// I stumbled across .join('') while looking for a way to use "+" in Javascript to stitch the string back together on one line.

// Lastly add an if statement to check if a condition has been met to run the program. 


var rev = [];

// first solution that is a bit clunky
// help from Julie Moon to use the "+" hint to get the result printed on one line, (but always ends up with an undefined message?).
function reverse1(word){
  if (tester){
    down = (word.length);
    line = ""
    for (var i = 0; i <= word.length; i++) {
    	line += word[down];
    	  //console.log(word[down]);
    	  down -=1;
    }
    console.log(line);
  } 
  else {
  	console.log("Sorry, out of order today.");
  }
}



// second solution that is better and I will 'join' to print on one line.
function reverse2(word){
  if (tester){
	for (var i = word.length; i >= 0; i--) {
		rev.push(word[i]);
	}
	console.log(rev.join(''));
  }
  else {
  	console.log("Sorry, out of order today.");
  }
}


// Driver Code======================================================

var str1 = "Hello There!";
var str2 = "Ohayo Gozaimasu."

tester = 1==1

reverse1(str1);
reverse2(str2);



