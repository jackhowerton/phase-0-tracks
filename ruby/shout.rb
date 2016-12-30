# module Shout
#   def self.yell_angrily(words)
#   	words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end

# end

module Shout
  def yell_angrily(words)
  	words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!" + " :D"
  end
end

class Penguin
	include Shout
end

class Saltshaker
	include Shout
end

raul = Penguin.new
raul.yelling_happily("muwahahaha")

zack = Saltshaker.new
zack.yell_angrily("no no no no")