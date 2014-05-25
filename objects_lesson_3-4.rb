# Print to the screen your method lookup for the classes that you have created.

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

module Trunk
  def open_trunk
    puts 'Trunk now open.'
  end

  def close_trunk
    puts 'Trunk is now closed.'
  end
end

class MyCar < Vehicle
  include Trunk

  HATCHBACK = true
end

class MyTruck < Vehicle
  TOWING_CAPACITY = 4400
end

puts 'Mycar ancestors:'
puts MyCar.ancestors
puts ''
puts 'MyTruck ancestors:'
puts MyTruck.ancestors
puts ''
puts 'Vehicle ancestors:'
puts Vehicle.ancestors

# Mycar ancestors:
# MyCar
# Trunk
# Vehicle
# Object
# Kernel
# BasicObject

# MyTruck ancestors:
# MyTruck
# Vehicle
# Object
# Kernel
# BasicObject

# Vehicle ancestors:
# Vehicle
# Object
# Kernel
# BasicObject

