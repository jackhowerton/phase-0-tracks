form = { }

puts "What is your name?"
form["name"] = gets.chomp

puts "","How many children do you have"
form["children"] = gets.chomp.to_i

puts "","How old are you?"
form["age"] = gets.chomp.to_i

puts "","Do you have a dog? (Yes/No)"
while input = gets.chomp.downcase;
	case input 
		when "yes"
			form["dog"] = true
			break;
		when "no"
			form["dog"] = false
			break;
		else
			puts "Whoops, please enter 'yes' or 'no'."
	end
end

puts "","Are you married? (Yes/No)"
while input = gets.chomp.downcase;
	case input 
		when "yes"
			form["marital status"] = true
			break;
		when "no"
			form["marital status"] = false
			break;
		else
			puts "Whoops, please enter 'yes' or 'no'."
	end
end

puts "","Describe your design aesthetic with one adjective?"
form["style"] = gets.chomp

puts "","Please check your answers below:"

for i in 0...form.length
  puts "- #{form.keys[i]}: #{form.values[i]}"
end


puts "","Is there an answer you would like to revise? (Yes/No)"
answer1 = nil;
answer2 = nil;

while answer1 = gets.chomp.downcase;
	case answer1 
		when "yes"
			puts "","No problem! What portion of the form would you like to revise? Or you can select 'none' to exit!"
			while answer2 = gets.chomp.downcase;
				if form.key?(answer2) then
					puts "","Great! What is your new answer regarding your #{answer2}?"
					form[answer2] = gets.chomp;
					break;
				elsif answer2 == "none" then
					puts "Spectacular! We got it all the first time!"
					  break;
				else
					puts "Jeez, don't think that's on the form."
				end
			end
			break;
		when "no"
			puts "","Amazing! Glad we got it all the first time."
			break;
		when "none"
			puts "","Fantastic! No revisions! Way to go!"
			break;
		else
			puts "Whoops, please give us a 'yes' or 'no' answer, or you may answer 'none' to exit."
	end
end

puts "","Your answers below:"
for i in 0...form.length
  puts "- #{form.keys[i]}: #{form.values[i]}"
end
