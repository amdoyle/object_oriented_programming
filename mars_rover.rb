class Rover
  attr_accessor = :x_coordinate
                  :y_coordinate
                  :direction

  def initialize (x_coordinate, y_coordinate, directions)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @directions = directions
  end
end

  def read_instructions(start, *instruct)

      if x == "N" && new_x == "L"
        "E"
      elsis x == "N" && new_x == "R"
        "W"
      elsif x == "W" && new_x == "L"
        "S"
      else
        "R"
    end
  end



#   def turn_left
# #this will move the Rover
#   end
#
#   def turn_right
# #turns the rover
#   end
#
#   def move_forward
#   #this will move forward
#   end
#
# end



puts "How wide is the area you would like to explore (please input two numbers seperated by a space)?"
max_x, max_y = gets.chomp.split(" ")
max_x.to_i
max_y.to_i

puts "Where would you like your rover to start? Please input two coordinate and a direction (N, E, S, W):"
start_x, start_y, start_direction = gets.chomp.split(" ")

rover1 = Rover.new(start_x, start_y, start_direction)

puts "Input your rover's movements (use L for left, R for right, and M to move forward one unit):"
instruction = gets.chomp.split("")

puts instruction
# 
# puts rover1.read_instructions(start_direction, instruction)
