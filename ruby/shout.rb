module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
   def yelling_happily(words)
    words + "!!!" + " ^.^"
  end
end

class Angryman
	include Shout
end

class Happyman
	include Shout
end

person1 = Angryman.new
puts person1.yell_angrily("You asshole")

person2 = Happyman.new
puts person2.yelling_happily("mi piaci")
