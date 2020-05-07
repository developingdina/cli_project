class Api

  # def self.get_spells_by_name(spell_name)
    ##goes out to D&D api
    ##finds spells by name
    ##returns that information
    #what is my endpoint
    #how do I go there and get what I need?
    #how do I handle that json and turn it into meaningful data?
    ######how do I make spell objs from that data
  # end

  def self.spells_by_name(spell_name)
    url = "https://www.dnd5eapi.co/api/spellcasting/#{klass_number}"
    response = Net::HTTP.get(URI(url))
binding.pry
  end

end
## service file/class responsible for communicating with api.
##going out to it, getting info, and returning it
