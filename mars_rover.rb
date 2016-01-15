class Rover
  attr_accessor = :start_x
                  :start_y
                  :start_direction
                  :direction

  def initialize (start_x, start_y, start_direction, direction)
    @start_x = start_x
    @start_y = start_y
    @start_direction = start_direction
    @direction = direction
  end

  def read_instructions(start_x, start_y, direction)
    # start_x.to_i
    # start_y.to_i
    direction.each do | x_array |
      x_array = 0
      x_array += 1
      direction.rotate(x_array)
  end
  end

  def move
    # move the rover one square
  end

  def turn
    #turn the rover 90 degrees right or left
  end

end


puts "How wide is the area you would like to explore (please input two numbers seperated by a space)?"
max_x, max_y = gets.chomp.split(" ")
max_x.to_i
max_y.to_i

puts "Where would you like your rover to start? Please input two coordinate and a direction (N, E, S, W):"
start_x, start_y, start_direction = gets.chomp.split(" ")
# rover_input = gets.chomp.split(" ")

puts "Input your rover's movements (use L for left, R for right, and M to move forward one unit):"
direction = gets.chomp.split("")

rover1 = Rover.new(start_x, start_y, start_direction, direction)
rover1.read_instructions(start_x, start_y, direction)
