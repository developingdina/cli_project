class Spell
  attr_accessor :name, :description, :range


@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end



  ## responsible for creating spell obj's
  ##
end
