var colors = ["red","green","blue","yellow"];
var names = ["Ruben","Barb","Esmer","Cheddar"];

colors.push("purple");
names.push("Mokin");

var horses = {};

for (var c = 0; c < colors.length; c++) {
	horses[names[c]] = colors[c]
}

console.log(horses);

