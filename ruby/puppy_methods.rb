class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {
  		puts "woof"
  	}
  end

  def rollover
  	puts "*rolls over*"
  end

  def dog_years(input)
  	x = input * 7
  	puts "dog years: #{x}"
  end
  
  def playdead
    puts "*plays dead*"
  end

  def initialize
  	puts "initializing new puppy instance..."
  end

end

# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(3)
# fido.dog_years(8)
# fido.rollover
# fido.playdead


class Gingerbreadman

	def initialize
		puts "initializing...beware the ginger bread man!"
	end

	def run(x)
		x.times {
			puts "You can't catch me, I'm the ginger bread man!"
		}
	end

	def favoritecookie
		puts "I prefer snickerdoodles."
	end

end

gingerbreadmen = []

50.times {
	gingerbreadmen << Gingerbreadman.new
}

gingerbreadmen.each do |gingerbreadman|
  gingerbreadman.run(3)
  gingerbreadman.favoritecookie
end


