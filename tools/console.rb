require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Mechanic.new('john', 'antique')
m2 = Mechanic.new('james', 'exotic')
m3 = Mechanic.new('lily', 'clunker')

o1 = CarOwner.new('richard')
o2 = CarOwner.new('michael')

c1 = Car.new('BMW','z4','exotic',o1, m2)
c2 = Car.new('Ford','fiesta','clunker',o1, m3)
c3 = Car.new('Ferrari','430','antique',o2, m1)
c4 = Car.new('Lamborghini', 'spyder','clunker',o1,m3)

binding.pry

puts 'done'
