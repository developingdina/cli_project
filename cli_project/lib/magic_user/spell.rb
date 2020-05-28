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
    by_letter = self.all.select{|s_obj| s_obj.index.start_with?(prompt_input)}
        by_letter.select.with_index(1) do |spell, index|
            puts "#{index}. #{spell.name}"
        end
    puts "Choose a number to learn more:"
    input = gets.strip.downcase
      if input.to_i.between?(1, by_letter.length)
        spell = by_letter[input.to_i - 1]
        Api.spell_info_call(spell)
        print_spell(spell)
      end
      binding.pry

  end


  ## responsible for creating spell obj's
  ##
end
