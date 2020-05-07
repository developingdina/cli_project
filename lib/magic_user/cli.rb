class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Spells"
    puts " "
    puts "Enter a spell to Continue:"
    @spell_name = gets.strip.downcase
    Api.spells_by_name(@spell_name)
  end
  ##responsible for handling input FROM user and output TO user

end
