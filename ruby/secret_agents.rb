# method that advances every letter of a string one letter forward.
def encrypt (input)
	for i in 0...input.length; 
		
		if input[i] != " " then
			if input[i] == "z" then
			  input[i] = "a"
			else
			  input[i] = input[i].next
			end
		end
	end
	return input;
end

# method that reverses the process above.
def decrypt (input)
	for i in 0...input.length; 
		
		if input[i] != " " then
			if input[i] == "a" then
			  input[i] = "z"
			else
			  input[i] = (input[i].ord-1).chr
			end
		end
	end
	return input;
end

puts "Would you like to decrypt or encrypt a password?" 
while response = gets.chomp.downcase;
	case response
		when "encrypt"
			break;
		when "decrypt"
			break;
		else
			puts "Whoops! Please answer 'encrypt' or 'decrypt'."
	end
end

puts "What is the password?"
password = gets.chomp;

if response == "encrypt" then
	puts encrypt(password);
else
	puts decrypt(password);
end



# the below line of code determines the return string of encrypt("swordfish"), aka inner method call,
# a jumbled mess of letters, and then calls decrypt (outer method call) on it to return the original input of "swordfish".
# decrypt(encrypt("swordfish")