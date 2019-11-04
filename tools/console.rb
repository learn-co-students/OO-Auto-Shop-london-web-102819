require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p = CarOwner.new("Peter")
j = CarOwner.new("James")
c = CarOwner.new("Collins")
d = CarOwner.new("Daniel")

m1 = Mechanic.new("Praise", "antique")
m2 = Mechanic.new("Lake", "exotic")
m3 = Mechanic.new("Pink", "clunker")

Car.new("Honda", "Civic", "clunker", m3, p)
Car.new("Mazda", "626", "clunker", m3, j)
Car.new("Mazda", "626", "clunker", m3, c)
Car.new("Honda", "Civic", "clunker", m3, d)

Car.new("Ferarri", "F2", "exotic", m2, p)
Car.new("Ferarri", "F4", "exotic", m2, j)
Car.new("Ferarri", "F7", "exotic", m2, p)

Car.new("Bugatti", "B2", "exotic", m2, c)
Car.new("Bugatti", "B5", "exotic", m2, c)

Car.new("Nissan", "1922", "antique", m1, c)
Car.new("Jetta", "1988", "antique", m1, d)
Car.new("Nissan", "1902", "antique", m1, j)







binding.pry

puts "It's Time"
