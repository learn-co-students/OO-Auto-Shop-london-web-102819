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

  def cars 
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    cars.map(&:mechanic)
  end

  def self.average_car_own
    Car.all.count/ self.all.count
  end
end
