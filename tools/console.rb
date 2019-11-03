require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

puts "CHECKING THE LAB"

own1 = CarOwner.new("pep")
own2 = CarOwner.new("fed")

m1 = Mechanic.new("Joe", "antique")
m2 = Mechanic.new("Fer", "exotic")
m3 = Mechanic.new("Ana", "clunker")

car1 = Car.new("honda", "civic", "clunker", m3, own1)
car2 = Car.new("honda", "civic", "exotic", m2, own1)
car3 = Car.new("honda", "civic", "clunker", m3, own2)
car4 = Car.new("honda", "civic", "antique", m1, own2)
car5 = Car.new("honda", "civic", "exotic", m2, own1)

puts ""

puts "Checking class Car_owner"
puts CarOwner.list_of_owners
puts ""
puts own1.all_cars
puts ""
own2.mechanics.each { |m| puts m.name }
puts ""
puts CarOwner.average_amount_of_cars

puts "checking Car class"
puts Car.all
puts Car.all_classifications
puts ""
puts car1.list_of_mechanics  #check it
# binding.pry
# puts ""
# puts "checking Mechanic class"
# puts Mechanic.all_mechanics
# puts ""
# puts m2.all_cars_services
# puts ""
# puts m1.all_owners_of_cars
# puts ""
# puts m1.names_of_car_owners
# puts ""
# puts m2.names_of_car_owners

# binding.pry
