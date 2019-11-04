class Car

  attr_reader :make, :model, :classification
  attr_accessor :mechanic, :owner
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

  def suitable_mechanics
    Mechanic.all.select{|m| m.specialty == @classification}
  end

  def self.classifications
    self.all.map{|c| c.classification}.uniq
  end

end
