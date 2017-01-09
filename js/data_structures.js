var colors = ["red","pink","green","yellow"];

var names = ["Jerry","Dave","Sprinkles","Rocket"];

colors.push("purple");

names.push("Charles");

console.log(colors);
console.log(names);


var horses = {
  
}

for (i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i]
}

console.log(horses);


function Car(year,make,color,runs) {

	this.year = year;
	this.make = make;
	this.color = color;
	this.runs = runs

	this.honk = function() {
		console.log("HONK HONK!");
	}

	console.log("WE BUILT A CAR!")
}

var greased_lightning = new Car(2001,"Nissan Xterra","Yellow",false)

var sally = new Car(1969,"Chevy Camaro","Orange",true)

greased_lightning.honk()
sally.honk()
console.log(sally)