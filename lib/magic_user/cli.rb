class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Spells"
    puts " "
    puts "Enter a spell to know it's power:"
    @spell_name = gets.strip.downcase
    Api.spells_by_name(@spell_name)
    print_category(Spell.all)
  end

  def print_category(spells)
    puts " "
    puts "You start to feel a mystical energy surround you."
    # puts "Unfamiliar symbols flash through your mind and a faint voice calls out"
    # puts "...#{@spell_name}..."
    puts "Choose a number to further master this spell:"
    spells.each.with_index(1) do |spell, index|
      puts "#{index}. #{spell.range}"


    end
  end
  ##responsible for handling input FROM user and output TO user
##puts "What other knowledge do you seek?"
##puts "~Enter another spell or exit to close the Tome~"
end
