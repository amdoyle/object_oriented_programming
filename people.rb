class Person

  def initialize(name)
    @name = name
  end

  def greeting(name)
    puts "Hi, my name is #{name}.s"
  end
end


class Students < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object."
  end
end
