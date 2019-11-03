class Mechanic
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
  end

  def self.all_mechanics
    mechanics = []
    Car.all.each { |c|
      mechanics << c.mechanic
    }
    mechanics.uniq
  end

  def all_cars_services
    Car.all.select { |car| car.mechanic == self }
  end

  def all_owners_of_cars
    owners = []
    all_cars_services.each { |c|
      owners << c.car_owner
    }
    owners.uniq
  end

  def names_of_car_owners
    owners = all_owners_of_cars
    owners.map { |o| o.name }
  end
end
