class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Knowledge"
    puts " "
    puts "Is it Magic you seek: y or n"
      input = gets.strip.downcase
      if input == ("y" || "yes") && (input != "n"|| "no")
        puts "Very well....choose which to learn:"
        ##Delaying the next li
        Api.spell_get_call
        puts " "
        Spell.all.each.with_index do |spell, index|
          puts "#{index}. #{spell.name}"
        end
      else
        puts "You are not worthy of the Power within"
      end
    # @spell_name = gets.strip.downcase
    # Api.spell(@spell_name)
    #binding.pry

  end


  ##responsible for handling input FROM user and output TO user

end
