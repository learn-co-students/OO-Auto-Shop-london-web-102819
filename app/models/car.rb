class Car
  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @mechanic = mechanic
    @car_owner = car_owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_classifications
    classific = []
    Car.all.each { |c|
      classific << c.classification
    }
    return classific.uniq
  end

  def list_of_mechanics
    mechanics = []
    cars = Car.all.select { |c|
      c.mechanic.specialty == self.classification
    }
    cars.each { |c|
      mechanics << c.mechanic
    }
    mechanics.uniq
  end
end
