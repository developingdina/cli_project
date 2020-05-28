class Cli

  def run
    puts " "
    puts "Welcome to the Tome of Spells:"
    puts " "
    puts "Is it Magic you seek: y or n"
    @input = gets.strip.downcase
    prompt_user if orig_input(@input)
    prompt_input = gets.strip.downcase

      while prompt_input != "exit"
          if prompt_input.to_i.between?(1, Spell.all.length)
              spell = Spell.all[prompt_input.to_i - 1]
              Api.spell_info_call(spell)
              print_spell(spell)
          elsif prompt_input == "list"
              Spell.all.each.with_index(1) do |spell, index|
              puts "#{index}. #{spell.name}"
              end
          elsif prompt_input == "#{prompt_input}"
            by_letter = Spell.find_by_letter(prompt_input)
            by_letter.each.with_index(1) do |spell, index|
              puts "#{index}. #{spell.name}"
            end
                if by_letter.empty?
                  puts "No spell starts with that letter.Try again:"
                else
                  puts "Choose a number to learn more:"
                  input = gets.strip.to_i
                  spell = by_letter[input.to_i - 1]
                  Api.spell_info_call(spell)
                  print_spell(spell)
                end
          else
              puts "I do not understand...try again"
          end
              prompt_user
              prompt_input = gets.strip.downcase
      end
          puts "(As you close the Tome it vanishes leaving you feeling more powerful.)"


    end

    def orig_input(input)
      if input == "y" || input == "yes"
          puts " "
          puts "Very well....here are all the spells of this Universe:"
          sleep 3
          Api.spell_get_call
          puts " "
          Spell.all.each.with_index(1) do |spell, index|
            puts "#{index}. #{spell.name}"
          end
      else
          puts "(The Tome vanishes)"
          exit
        end
    end

    def prompt_user
        puts " "
        puts "Enter a 'number' to learn more about a spell,'list' to see the list again, a 'letter'
         to list spells by that letter, or type 'exit' to close the Tome: "
        puts " "
    end

    def print_spell(spell)
        puts "Name: #{spell.name}"
        puts " "
        puts "Description: #{spell.description}"
        puts " "
        puts "Range: #{spell.range}"
        puts " "
        puts "Components: #{spell.components}"
        puts ""
        puts "Duration: #{spell.duration}"
    end

end
