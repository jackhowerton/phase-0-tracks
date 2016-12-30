class Santa

	attr_reader :ethnicity

	attr_accessor :gender, :age

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		p "#{@name}: 'That was a good #{type} cookie!'"
	end

	def initialize(name,gender,ethnicity)
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner","Blitzen"]
		@age = 0;
		@location = "North Pole"
		p "Initializing Santa instance...#{@name}, #{gender}, #{ethnicity}"

	end

	def travel(destination)
		@location = destination
		p "#{@name} has traveled to #{@location}."
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
	end

	def about
		puts "Name: #{@name}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end
	
end

# santas = [ ]
# santas << Santa.new("Jack","male","white")
# santas << Santa.new("Jessica","female","black")
# santas << Santa.new("Pedro","male","hispanic")
# santas << Santa.new("Tim", "male", "korean")

example_ethnicities = ["white","black","latino","asian","brazilian","russian","irish"]
example_genders = ["male","female","agender","genderfluid","male","male","female"]
example_names = ["bob","rebecca","paul","george","billy","sam","sarah"]

santas2 = [ ]
example_genders.length.times do |i|
  santas2 << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
end

santas2.each do |x|
	x.age = Random.rand(140)
	x.about
end
