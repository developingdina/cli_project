class Spell
  attr_accessor :name, :index, :description, :range, :components, :duration


@@all = []

  def initialize(name:, index:)
    @name = name
    @index = index
    @description = description
    @range = range
    @components = components
    @duration = duration
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_letter(prompt_input)
    self.all.select do |s_obj| s_obj.index.start_with?(prompt_input)
    end
  end


  ## responsible for creating spell obj's
  ##
end
