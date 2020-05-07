class Spell
  attr_accessor :name, :description, :range


@@all = []

  def initialize(spell_name, description, range = nil)
    @name = spell_name
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
