
// write a function that reverses a string. ex function('hello') returns olleh

// I know that we can count down.


var str = "Hello There!";
var str2 = "Ohayo Gozaimasu."

var rev = [];


function reverse(word){
	down = (word.length);
  for (var i = 0; i <= word.length; i++) {
  	  console.log(word[down]);
  	  down -=1;
  }
}

reverse(str2);