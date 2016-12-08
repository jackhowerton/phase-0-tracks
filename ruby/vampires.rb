puts "How many employees to process?"
employees = gets.chomp.to_i; 
currentyear = 2016; #declares what year it is for the age-related questions. Could alternately prompt the user for the current date, future-proofing the program somewhat. 



for i in 1..employees; #gathers data from a given employee.
	puts "Employee #{i}: What is your name?";
	name = gets.chomp;

	puts "Employee #{i}: How old are you?";
	age = gets.chomp.to_i;

	puts "Employee #{i}: What year were you born in?";
	birthyear = gets.chomp.to_i;

	puts "Employee #{i}: Our company cafeteria serves garlic bread. Should we order some for you? (YES/NO)";
	garlicbread = gets.chomp.upcase;

	puts "Employee #{i}: Would you like to enroll in the company's health insurance? (YES/NO)";
	healthinsurance = gets.chomp.upcase;

	# allows user to input a list of allergies, capped off with 'done'
	puts "Employee #{i}: Do you have any allergies? (1 per line, 'done' to move on.)"
	allergy = 0; # resets allergy with each loop iteration, clearing previous
	until allergy == "done" do
		allergy = gets.chomp
		if allergy == "sunshine"
			puts "Employee #{i}: Probably a vampire."
			break # if allergic to sunshine, closes the allergy survey for this person and identifies them as vampire/ moves on to next examinee. 
		end
	end



	# if a person of x age was not born x years ago, they're fibbing!
	if (age + birthyear == currentyear) || (age + birthyear - 1 == currentyear) then
		agecheck = true;
	else
		agecheck = false;
	end

	# if a person doesn't like garlic bread, something is fishy!
	if garlicbread == "YES" then
		garlicbreadcheck = true;
	else
		garlicbreadcheck = false;
	end

	# if a person doesn't need health insurance/ever get sick, are they human?
	if healthinsurance == "YES" then
		healthinsurancecheck = true;
	else
		healthinsurancecheck = false;
	end


	# if the person is not flagged for a sunshine allergy, program makes a recommendation as to person's vampirishness based on answers to questions re: age, garlic bread, and health insurance.
	if agecheck && garlicbreadcheck && healthinsurancecheck then
		result = "Employee #{i}: Probably not a vampire."
	elsif !agecheck && !garlicbreadcheck || !healthinsurancecheck then
		result = "Employee #{i}: Probably a vampire."
	elsif !agecheck && !garlicbreadcheck && !healthinsurancecheck then
		result = "Employee #{i}: Almost certainly a vampire"
	else
		result = "Employee #{i}: Results inconclusive."
	end

	#if the user has a vampirish name, overwrite results based on inputs. They're definitely a vampire!
	if name == "Drake Cula" || name == "Tu Fang" then
		result = "Employee #{i}: Definitely a vampire."
	end

	#if the user input 'sunshine' as allergy, disregard conclusions made based on the rest of their statements. THEY ARE DEFINITELY A VAMPIRE!
	if allergy != "sunshine" then
		puts result
	end
end 


# "actually nevermind!" message for release 5.
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."