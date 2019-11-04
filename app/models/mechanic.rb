class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select{|c| c.mechanic == self}
end

def owners
  cars.map{|c| c.owner}
end

def owner_names
  owners.map{|o| o.name}
end


end
