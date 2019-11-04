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

  def self.owner_count
    self.all.count
  end

  def cars
    Car.all.select{|c| c.owner == self}
  end

  def car_count
    cars.count
  end

  def mechanics
    cars.map{|c| c.mechanic}
  end

  def self.average_no_cars
    (CarOwner.all.reduce(0){|sum, o| sum += o.car_count} / self.owner_count.to_f).round(2)
  end


end
