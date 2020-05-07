class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Spells"
    puts " "
    puts "Enter a spell to know it's power:"
    @spell_name = gets.strip.downcase
    Api.spells_by_name(@spell_name)
    puts "What other knowledge do you seek?"
    puts "~Enter another spell or exit to close the Tome~"
  end
  ##responsible for handling input FROM user and output TO user

end
