function longest(array) {
text_length = "";
for (var i = 0; i < array.length; i++) {
	if (array[i].length > text_length.length ) {
		text_length = array[i];
	}
}
console.log(text_length);
}

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





// Driver Code for "longest"
first_array = ["long phrase","longest phrase","longer phrase"];
longest(first_array);
second_array = ["one","two","three","four","five","six","seven"];
longest(second_array);


//Driver Code for "checker"
hash1 = {name: "Tamir", age: 100};
hash2 = {name: "Tamir", age: 50};
hash3 = {name: "Jen", age: 25};
hash4 = {name: "Van", age: 16};
checker(hash1,hash2);
checker(hash3,hash4);
