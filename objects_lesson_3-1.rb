# Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior
# that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar
# class that stores information about the vehicle that makes it different from other types of Vehicles.
# Then create a new class called MyTruck that inherits from your superclass that also has a
# constant defined that separates it from the MyCar class in some way.

class Vehicle

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
    puts "Car is now off."
  end

  def spray_paint(new_color)
  	self.color = "#{color} + streaks of #{new_color}"
  end

  def gas_mileage(miles, gallons)
  	miles / gallons.to_f
  end

  def to_s
    "#{self.color} #{self.year} #{@model}"
  end
end

class MyCar < Vehicle
  HATCHBACK = true
end

class MyTruck < Vehicle
  TOWING_CAPACITY = 4400
end



