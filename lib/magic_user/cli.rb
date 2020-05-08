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
        ##exits CLI
      end
      @spell_num = gets.strip.to_i
      Api.spell_info_call(@spell_num)
    ##how to take integer input and connect it to spell obj
    ##how to use spell obj to make api calls
    ##how to return that info and display it
  end


  ##responsible for handling input FROM user and output TO user

end
