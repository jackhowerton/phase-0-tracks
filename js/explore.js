// 1. Takes in a string as an input.
// 2. Splits input into an array for easier reshuffling via .reverse.
// 3. Outputs a new string of the reversed array.


function reverse (x) {
	return x.split('').reverse().join('')
}

var thing = 'testing'
if (1 == 1) {
	console.log(thing)
}

reverse("gopher")