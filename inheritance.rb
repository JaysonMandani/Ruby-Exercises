class Bird
  def fly
    "Yay! I'm flying."
  end

  def eat
    "Yay! I'm eating"
  end

  def walk
    "Yay! I'm walking"
  end

  def sing
    "Yay! I'm singing"
  end
end

class Ostrich < Bird
  def fly
    "I can't fly, I am an #{self.class}!"
  end

  def sing
    "I can't sing, I am an #{self.class}!"
  end
end

class Parrot < Bird
  def walk
    "I can't walk, I am an #{self.class}!"
  end
end

class Eagle < Bird
  def walk
    "I can't walk, I am an #{self.class}!"
  end

  def sing
    "I can't sing, I am an #{self.class}!"
  end
end

puts "Ostrich"
ostrich = Ostrich.new
puts ostrich.fly
puts ostrich.eat
puts ostrich.walk
puts ostrich.sing

puts "Parrot"
parrot = Parrot.new
puts parrot.fly
puts parrot.eat
puts parrot.walk
puts parrot.sing

puts "Eagle"
eagle = Eagle.new
puts eagle.fly
puts eagle.eat
puts eagle.walk
puts eagle.sing
