var colors = ["red","green","blue","yellow"];
var names = ["Ruben","Barb","Esmer","Cheddar"];

colors.push("purple");
names.push("Mokin");

var horses = {};

for (var c = 0; c < colors.length; c++) {
	horses[names[c]] = colors[c]
}

console.log(horses);

function Car(make, model, year) {
	"New Car:", this;
	this.make = make;
	this.model = model;
	this.year = year;

	this.gas = function() { console.log("VROOOOOOOOM!");};
}

var car1 = new Car("Acura","NSX","2017");
console.log(car1)
car1.gas();

var car2 = new Car("Infiniti","Q60 Red Sport","2017");
car2.gas();

var car3 = new Car("BMW","M4","2016");
console.log(car3);