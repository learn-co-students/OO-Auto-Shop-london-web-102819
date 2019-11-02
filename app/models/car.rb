class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_classifications
    self.all.map {|c| c.classification}
  end

  #Get a list of mechanics that have an expertise that matches the car classification
  def self.list_mechanic(classification)
    Mechanic.all.select {|m| m.specialty == classification}
  end
end
