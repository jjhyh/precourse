# Add a class variable to your superclass that can keep track of the number of objects
# created that inherit from the superclass. Create a method to print out the value of
# this class variable as well.

class Vehicle
  @@num_of_vehicles = 0
  
  attr_accessor :color
  attr_reader   :year

  def initialize(args={})
    @@num_of_vehicles += 1
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

  def self.num_of_vehicles
    puts "#{@@num_of_vehicles}"
  end
end

class MyCar < Vehicle
  HATCHBACK = true
end

class MyTruck < Vehicle
  TOWING_CAPACITY = 4400
end




