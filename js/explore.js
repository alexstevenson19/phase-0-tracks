
// assign a word to a variable

var str = "hello";

// put the variable through a loop, but count down from the end to the beginning

for (var i = str.length; i >= 0; i-=1) {
	console.log(str[i]);
}