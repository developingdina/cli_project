class Spell
  attr_accessor :name, :index, :description, :range


@@all = []

  def initialize(name, index)
    @name = name
    @index = index
    # @description = description
    # @range = range
    @@all << self
  end

  def self.all
    @@all
  end



  ## responsible for creating spell obj's
  ##
end
