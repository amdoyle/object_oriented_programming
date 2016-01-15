class Rover
  attr_accessor = :start_x
                  :start_y
                  :direction
                  # :dir

  def initialize (start_x, start_y, direction)
    @start_x = start_x
    @start_y = start_y
    @direction = direction
    # @dir = dir
  end

  def read_instructions(dir)
    dir.each do |letter|
    case letter
    when "R"
        turn_right
      when "L"
        turn_left
      when "M"
        move
      else
        puts "you crazy!"
    end
    end
  puts "I am at #{@start_x} #{@start_y} #{@direction}"
  end

  def turn_left
    case @direction
      when "N"
        @direction= "W"
      when "S"
        @direction= "E"
      when "E"
        @direction = "N"
      when "W"
         @direction = "S"
       else
         puts "you crazy! how did this happen?"
    end
  end
#
  def turn_right
    case @direction
      when "N"
        @direction = "E"
      when "S"
        @direction = "W"
      when "E"
        @direction = "S"
      when "W"
        @direction  = "N"
      else
        puts "what are you doing?"
    end
  end

  def move
    case @direction
      when "N"
        @start_y = @start_y + 1
      when "S"
        @start_y = @start_y - 1
      when "E"
        @start_x = @start_x + 1
      when "W"
        @start_x = @start_x - 1
      else
        puts "really?"
      end
  end

end



puts "How wide is the area you would like to explore (please input two numbers seperated by a space)?"
max_x, max_y = gets.chomp.split(" ")
max_x.to_i
max_y.to_i

puts "Where would you like your rover to start? Please input two coordinate and a direction (N, E, S, W):"
start_x, start_y, direction = gets.chomp.split(" ")
start_x = start_x.to_i
start_y = start_y.to_i


puts "Input your rover's movements (use L for left, R for right, and M to move forward one unit):"
dir = gets.chomp.split("")

rover1 = Rover.new(start_x, start_y, direction)

rover1.read_instructions(dir)
