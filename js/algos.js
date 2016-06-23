// Write a function that takes an array.
// using a for statement, make an if statement to find the longest word in the array
// print the array
function longest(array) {
	text_length = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > text_length.length ) {
			text_length = array[i];
		}
	}
	console.log(text_length);
}

// Write a function that takes two hashes.
// If statement for comparing hashes
// print if the matches are true or false.
function checker(one,two) {
	if (one["name"] == two["name"]) {
		var matched = true;
	} else if (one.age == two.age) {
		var matched = true;
	} else {
		var matched = false;
	}
	console.log(matched);
}

// Write a function that takes an integer.
// Take the length of an integer and build an array of strings determined by integer.length
// make a random word created of a length from 1 - 10 with random letters.
function integer(number) {
	var text = "";
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	var array = []
	for (var n = 0; n < number; n++) {
		for (var i = 0; i < (Math.floor(Math.random() * 11) + 1); i++) {
			text += possible.charAt(Math.floor(Math.random() * possible.length));
		}
		array.push(text);
		text = "";
	}
	console.log(array);
	return array;
}



// Driver Code for "longest"
first_array = ["long phrase","longest phrase","longer phrase"];
longest(first_array);
second_array = ["one","two","three","four","five","six","seven"];
longest(second_array);


//Driver Code for "checker"
hash1 = {name: "Tamir", age: 100};
hash2 = {name: "Tamir", age: 50};
hash3 = {name: "Jen", age: 25};
hash4 = {name: "Van", age: 50};
checker(hash1,hash2);
checker(hash3,hash4);
checker(hash2,hash4);

//Driver Code for "integer" and "longest"
for (var times = 0; times < 10; times++) {
	// Change the parameter of integer for the amount of words wanted in the array.
	var array_value = integer(5);
	longest(array_value);
	console.log("\n");
}

