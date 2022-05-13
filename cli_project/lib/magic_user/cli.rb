class Cli  
  def run
    puts "   
    :?JJJJJ?^  .?J7  .JJ7.~J7.  ~JJ:  ^7JYJ?^ .?JJJJJ~   ~?YYJ7:  ^J?:  :JJ~ ^?YYYJ.
      .PB5^~JBG~ PBY  .GB7 ^BBBY:^BG :PBY~^^!!  YBG!!!~ ^GBJ^^~5B5..GGB5^.GB::BB?~~7.
       5BJ   5BG.5BY  .GB7 ^BP75BPGG.5BP   ^!7. JGG5Y5. GB5    .GBJ.GG7YBGGG: !J5P5J^
       PB5..!GG7 YBP. ~GB~ ^BP  ^YGG.!BG~. 7BB. YBP^^^^.!BG!...JBG:.GB. :JGB:.?:.:5BG
    :55555Y!:  .!YP55J^  !55:   :?  :?5PPP5Y..J55555Y  .75PPPY~  ^55~   .?: 55555J:            
           .75J?5?.  ::..::..   .....      ....      ..:..      .::.    ..    .::.  .::.        
           ?G5. !BY  .?BGP55PY~ :GGYJGP^   !BGG^   ^YGPYY55  :YGP55PP7. JBP7. JB5 7GPJJ5J       
           ^YYJJ?5:    5Y~  ^GB7.GG!:GG!  ^GP?GG: ~BG~  ..^.^BB!   .5BP 7BGGG?YBY ?GP?!~:       
          .JP?PGY5.  ~!JJJ~..GB?.GG5GB5. :GB5!GGP.!BG:  ^GG~^BG^    JBG 7BY !GBGY ::^!YGG^      
         :JJY!~?^Y?.7?~PG5JYGP? .BB~.?GG7PBY777PB5:?GGJ7JBB! !PGY??PGY: JB5   ~P5 JP?!JBG^      
         ?BGG. : ~Y5Y..~^~~^:   :^^:  .^^^^.   :^^:  :~!~^:.   :^~~^.  .^^^.    : .^~!~:        
         ?BGP:   !PJPP?Y.~P.                                                                    
         .?5GBPPGP! ?5BBGPJ.                                                                    
            .^~^.     :!!:"
    puts "                                   ---------------------------------"
    puts "                                 ||                                 |"
    puts "                                 ||                                 |"
    puts "                                 ||Welcome to the Tome of Spells:   |"
    puts "                                 ||                                 |"
    puts "                                 ||                                 |"
    puts "                                 ||                                 |"
    puts "                                 ||                                 |"
    puts "                                   --------------------------------- "
    puts "                                    Is it Magic you seek: Y or N"
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
                  puts "No spell starts with that letter. Try again:"
                else
                  puts "Choose a number to learn more:"
                  puts " "
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
