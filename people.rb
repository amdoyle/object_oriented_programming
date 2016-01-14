class Person

  attr_accessor = :name

  def initialize(name)
    @name = name
  end

  def greeting(name)
    puts "Hi, my name is #{@name}."
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

chris = Instructor.new("Chris")

chris.greeting(@name)

christina = Students.new("Christina")

christina.greeting(@name)
