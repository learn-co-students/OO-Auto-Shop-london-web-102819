require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

############ CarOwner Testing #############
co1 = CarOwner.new("Qing")
co2 = CarOwner.new("Matthew")
co3 = CarOwner.new("Tom")

############ Mechanic Testing ###############
#(name, specialty)
m1 = Mechanic.new("Steve", "clunker")
m2 = Mechanic.new("Gilly", "exotic")
m3 = Mechanic.new("Jamie", "antique")


############ Car Testing #################
#(make, model, classification, owner, mechanic)
Car.new("Honda", "2345", "clunker", co1, m1 )
Car.new("Benci", "9877", "exotic", co2, m2 )
Car.new("Luhu", "8888", "clunker", co3, m1 )
Car.new("Bentian", "6666", "antique", co1, m3 )
Car.new("Futian", "6666", "antique", co1, m3 )
Car.new("Poche", "6666", "antique", co1, m3 )

binding.pry
