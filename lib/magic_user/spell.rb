class Spell
  attr_accessor :name, :description, :range


@@all = []

  def initialize(name:, description:, range:)
    @name = name
    @description = description
    @range = range
    @@all << self
  end

  def self.all
    @@all
  end



  ## responsible for creating spell obj's
  ##
end
