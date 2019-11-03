class CarOwner
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.list_of_owners
    owners = []
    Car.all.each { |c|
      owners << c.car_owner
    }
    owners.uniq
  end

  def all_cars
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    all_cars.map { |car| car.mechanic }
  end

  def self.average_amount_of_cars
    owners = list_of_owners.length
    all_cars = Car.all.length
    all_cars / owners
  end
end
