module Shout
  def self.yell_angrily(words)
  	words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!" + " :D"
  end

end

Shout.yelling_happily("muwahahaha")
Shout.yell_angrily("no no no no")