# You want to create a nice interface that allows you to accurately describe the action
# you want your program to perform. Create a method called spray_paint that can be called
# on an object and will modify the color of the car.

class MyCar

  attr_accessor :color
  attr_reader   :year

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
    puts 'Car is now off.'
  end

  def spray_paint(new_color)
  	self.color = "#{color} + streaks of #{new_color}"
  end
end