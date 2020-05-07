class Api

  def self.spells_by_name(spell_name)

    url = "https://www.dnd5eapi.co/api/spells/#{spell_name}"
    response = Net::HTTP.get(URI(url))
    spell_info = JSON.parse(response)

    spell_info.each do |spell_details|
      Spell.new(name)
    end
        binding.pry
  end
#   def self.spells_by_name(spell_name)
#     url = "http://www.dnd5eapi.co/api/spells/#{spell_name}"
#     response = Net::HTTP.get(URI(url))
#
#     names = JSON.parse(response)["name"]
#     ##name of spell
#     descriptions = JSON.parse(response)["desc"]
#     ##spell descriptions
#     higher_lvl_desc = JSON.parse(response)["higher_level"]
#     ##descriptions at a higher level of user
#     ranges = JSON.parse(response)["range"]
#     ##how long or wide it is cast
#     components = JSON.parse(response)["components"]
#     ##things needed to case: verbal, somatic, or materials
#     materials = JSON.parse(response)["material"]
#     ##type of material needed to cast a spell
#     durations = JSON.parse(response)["duration"]
#     ##how long the spell lasts
#     casting_times = JSON.parse(response)["casting_time"]
#     ##how long the spell lasts
#     levels_to_use = JSON.parse(response)["level"]
#     ##level needed in magic to cast
#     klasses = JSON.parse(response)["classes"]
#     ##classes that can use the spell
# binding.pry
#   end

end
## service file/class responsible for communicating with api.
##going out to it, getting info, and returning it
