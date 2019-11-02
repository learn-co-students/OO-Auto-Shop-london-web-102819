class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #Get a list of all the cars that a specific owner has
  def cars
    Car.all.select {|c| c.owner == self}
  end

  #Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map {|c| c.mechanic}
  end

  #Get the average amount of cars owned for all owners
  def self.average_amount
    total_cars = Car.all.size
    total_owners = self.all.size
    average_amount = total_cars / total_owners
  end

end
