class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Knowledge"
    puts " "
    puts "Is it Magic you seek: y or n"
    @input = gets.strip.downcase
    orig_input(@input)
    prompt_user
    prompt_input = gets.strip.to_i

      while prompt_input != "exit"
        if prompt_input == "list"
          ##print list again
        elsif prompt_input == "spell"
          ##call out to API with spell obj index number
          ##return information
          ##display information
        else
          puts "I do not understand...try again"
        end
        prompt_user
        prompt_input = gets.strip.to_i
      end
      puts "~The book vanishes as you close it leaving you feeling stronger in the magical arts~"
          ##
    #Api.spell_info_call(@prompt_input)

    ##how to take integer input and connect it to spell obj
    ##how to use spell obj to make api calls
    ##how to return that info and display it
  end

  def orig_input(input)
    if input == ("y" || "yes") && (input != "n"|| "no")
      puts " "
      puts "Very well....here are all the spells of this Universe:"
      sleep 3
      Api.spell_get_call
      puts " "
      Spell.all.each.with_index do |spell, index|
        puts "#{index}. #{spell.name}"
      end
    else
      puts "You are not worthy of this Power"
      ##exits CLI
    end
  end

  def prompt_user
    puts " "
    puts "Select a number to learn more about a "spell"; type "list" to see the list again, or type "exit" to close the Tome: "
    puts " "
  end
  ##responsible for handling input FROM user and output TO user

end
