# Add a class method to your MyCar class that calculates the gas mileage of any car.

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

  def gas_mileage(miles, gallons)
  	miles / gallons.to_f
  end
end