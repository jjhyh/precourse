# Create a class called MyCar. When you initialize a new instance or object of the class,
# allow the user to define some instance variables that tell us the year, color, and model
# of the car. Create an instance variable that is set to 0 during instantiation of the
# object to track the current speed of the car as well. Create instance methods that allow
# the car to speed up, brake, and shut the car off.

class MyCar

  def initialize(args={})
    @year  = args[:year]
    @color = args[:color]
    @model = args[:model]
    @speed = 0
  end

  def gas(num)
    @speed += num
  end

  def brake(num)
    @speed -= num
  end

  def turn_off
  	@speed = 0
    puts "Car is now off."
  end
end