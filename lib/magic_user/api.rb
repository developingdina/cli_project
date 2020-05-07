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
    url = "http://www.dnd5eapi.co/api/spells/#{spell_name}"
    response = Net::HTTP.get(URI(url))

    names = JSON.parse(response)["name"]
    ##name of spell
    descriptions = JSON.parse(response)["desc"]
    ##spell descriptions
    higher_lvl_desc = JSON.parse(response)["higher_level"]
    ##descriptions at a higher level of user
    ranges = JSON.parse(response)["range"]
    ##how long or wide it is cast
    components = JSON.parse(response)["components"]
    ##things needed to case: verbal, somatic, or materials
    materials = JSON.parse(response)["material"]
    ##type of material needed to cast a spell
    durations = JSON.parse(response)["duration"]
    ##how long the spell lasts
    casting_times = JSON.parse(response)["casting_time"]
    ##how long the spell lasts
    levels_to_use = JSON.parse(response)["level"]
    ##level needed in magic to cast
    klasses = JSON.parse(response)["classes"]
    ##classes that can use the spell
binding.pry
  end

end
## service file/class responsible for communicating with api.
##going out to it, getting info, and returning it
