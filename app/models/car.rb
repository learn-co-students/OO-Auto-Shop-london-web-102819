class Car

  attr_reader :make, :model, :classification, :mechanic, :owner

  @@all = []

  def initialize(make, model, classification, mechanic, owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner

    @@all << self
  end

  def self.all 
    @@all
  end

  def self.classifications
    self.all.map(&:classification)
  end

  def self.mechanics
    self.all.map(&:mechanic).uniq
  end

  def self.find_mechanics(classification)
    mechanics.find_all{|m| m.specialty == classification}
  end



end
