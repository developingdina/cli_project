class Cli

  def run
    puts " "
    puts "Greetings Magic User, what knowledge do you seek?"
    puts " "
    puts "Enter your class by number: "
    puts "1. Bard"
    puts "2. Cleric"
    puts "3. Druid"
    puts "4. Paladin"
    puts "5. Ranger"
    puts "6. Sorcerer"
    puts "7. Warlock"
    puts "8. Wizard"
    @klass_number = gets.strip.to_i
    Api.spells_by_klass(@klass_number)
  end
  ##responsible for handling input FROM user and output TO user

end
