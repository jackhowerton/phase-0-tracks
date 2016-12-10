
# hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
puts "What is your name?";
name = gets.chomp;

# volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
puts "What is your volume? (1-10 scale)";
volume = gets.chomp;


# fur color
puts "What is your fur color?"
color = gets.chomp;


# whether the hamster is a good candidate for adoption
puts "Are you a good candidate for adoption? (YES/NO)"

while 
	good =gets.chomp.upcase;
	case good
		when "YES"
			goodcandidate = true;
			break;
		when "NO"
			goodcandidate = false;
			break;
		else
			puts "Sorry, didn't understand your answer. Please type 'YES' or 'NO'"
	end
end

# estimated age
puts "Roughly how old are you?"
estimated_age = gets.chomp.to_i

if estimated_age == "" then
	estimated_age = nil;
end


puts "Profile for Hamster #{name}:"
puts "#{name} is #{volume} loud on a scale from 1-10."
puts "They have #{color} fur."
puts "Is this a good candidate for adoption?: #{goodcandidate}"
puts "They are #{estimated_age} years old, we think?"
