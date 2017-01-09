function longest_phrase(inputarray) {

var longest = 0
var index = null

  for (i = 0; i < inputarray.length; i++) {
    if(inputarray[i].length > longest) {
      longest = inputarray[i].length
      index = i
    }
  }
return inputarray[index]
}

longest_phrase(["nougat","I am the greatest!","boogaloo"])