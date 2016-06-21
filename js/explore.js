//put in the function
function reversal(string) {
var split = string.split("");
var reversed = split.reverse();
var combine = reversed.join("");
if (string.length > 5) {
console.log(combine);
} else {
	console.log("you got a short string.")
}
//reverse the string 
//print the new string reversed.
}

reversal("get back");