# Storage for the user's original names and converted results.
$originalNames = [ ]
$convertedNames = [ ]

def nameconvert (inputname)
  vowels = "aeiou"
  consonants = 'bcdfghjklmnpqrstvwxyz'
  
	# Cycles through each letter in input.
	for i in 0...inputname.length   

	# If character in question is a consonant,
	# converts consonants one letter forward, b --> c --> d --> f --> g    
	  if consonants.index(inputname[i]) != nil 
	    inputname[i] = consonants[consonants.index(inputname[i])-consonants.length+1]
	    
	# If character is a vowel, converts forward a --> e --> i --> o --> u
	  elsif vowels.index(inputname[i]) != nil
	    inputname[i] = vowels[vowels.index(inputname[i])-vowels.length+1]
	  end
	end

	# Transforms string to an array, switches first/last names.
	inputname = inputname.split(' ').reverse!

	# Applies First Last capitalization to the new names.
	for i in 0...inputname.length
	  inputname[i].capitalize!
	end

	# Finally, prints out new name.
	inputname = inputname.join(" ")
  output = inputname
  $convertedNames.push(output)
  puts "Old: #{$originalNames.last} ---> New: #{output}"
end

response = nil;
  # Until the user asks to 'quit', continue prompting the user for more inputs
until response == 'quit'
  puts "","Enter your full name and we'll convert it to a code name! To quit, please type 'quit'."
  
  # Stores the user's name input as entered in $originalNames
  $originalNames << gets.chomp
  
  # Makes the user's entry lowercase, so that requests to 'quit' end the program.
  response = $originalNames.last.downcase
  
  #So long as the user enters a string other than 'quit', the program will convert to code name.
  if response == 'quit'
    # Should the user enter 'quit', displays summary of aliases user has made.
    puts "","Summary of Aliases:"
    for i in 0...$convertedNames.length
      puts "- #{$originalNames[i]} is actually #{$convertedNames[i]}"
    end
    break
  else
    # If the user does not enter 'quit', converts entered name into alias.
    nameconvert(response)
  end
end