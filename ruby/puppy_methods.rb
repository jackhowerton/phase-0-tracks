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

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.dog_years(8)
fido.rollover
fido.playdead