##responsible for handling input FROM user and output TO user

class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Knowledge"
    puts " "
    puts "Is it Magic you seek: y or n"
    @input = gets.strip.downcase
    orig_input(@input)
    prompt_user
    prompt_input = gets.strip.downcase

      while prompt_input != "exit"
        if prompt_input.to_i > 0 && prompt_input.to_i < Spell.all.length
          spell = Spell.all[prompt_input.to_i - 1]
          Api.spell_info_call(spell)
          print_spell(spell)
        elsif prompt_input == "list"
          orig_input(@input)
        else
          puts "I do not understand...try again"
        end
        prompt_user
        prompt_input = gets.strip.downcase
      end
      puts "~The book vanishes as you close it leaving you feeling stronger in the magical arts~"
  end



  def orig_input(input)
    if input == ("y" || "yes") && (input != "n"|| "no")
      puts " "
      puts "Very well....here are all the spells of this Universe:"
      sleep 3
      Api.spell_get_call
      puts " "
      Spell.all.each.with_index(1) do |spell, index|
        puts "#{index}. #{spell.name}"
      end
    else
      puts "You are not worthy of this Power"
      ##exits CLI
    end
  end



  def prompt_user
    puts " "
    puts "Enter a number to learn more about a spell; type list to see the list again, or type exit to close the Tome: "
    puts " "
  end



  def print_spell(spell)
    puts "Name: #{spell.name}"
    puts " "
    puts "#{spell.description}"
    puts " "
    puts "Range: #{spell.range}"
    puts " "
    puts "Components: #{spell.components}"
  end


end
