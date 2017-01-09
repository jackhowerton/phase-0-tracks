
// Takes in an array of strings
// Using a loop, measures each string in array, storing max length found.
// Returns said variable

function longest_phrase(inputarray) {
longest = 0
index = null
  for (i = 0; i < inputarray.length; i++) {
    if(inputarray[i].length > longest) {
      longest = inputarray[i].length
      index = i
    }
  }
return inputarray[index]
}

longest_phrase(["Where's the beef?","I am the greatest!","test"])



// Obtains keys from first input
// Keys from object 1 are used to compare key values across both objects
// If there is a 'hit' or at least 1 matching key value, returns true
// Otherwise, returns default condition of false

function compare_obj(input1, input2) {
  keys1 = Object.keys(input1)
  condition = false
  
  for (i = 0; i < keys1.length; i++) {
    if(input1[keys1[i]] == input2[keys1[i]]) {
      condition = true
    }
  }
  return condition
}

var test1 = { name: "Steven", age: 54 }
var test2 = { name: "Billy", age: 4}
compare_obj(test1,test2)

// Generates a number of random strings and stores them in an array. 
// Runs longest_phrase method on array and spits out longest string. 

function randomstrings(x) {
  array = [ ]
  for(i = 0;i < x; i++) {
    array.push(Math.random().toString(36).replace(/[^a-z]+/g, '').substr(0, Math.floor(Math.random()*11)))
  }
  return longest_phrase(array)
}

randomstrings(7)