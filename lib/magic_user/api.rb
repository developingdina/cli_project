class Api


  def self.spell_get_call
    url = "https://www.dnd5eapi.co/api/spells"
    response = Net::HTTP.get(URI(url))
    spell_info = JSON.parse(response)["results"]

    # name = spell_info["name"]
    spell_info.each do |spell_list|
    Spell.new(name: spell_list["name"],index: spell_list["index"])
  end
  #binding.pry
  end

##Api.spell_info_call(spell)
  def self.spell_info_call(spell) ##spell object
    ##spell_num = spell in Spell.all
    ##spell.index
    url = "https://www.dnd5eapi.co/api/spells/#{spell.index}"
    response = Net::HTTP.get(URI(url))
    spell_details = JSON.parse(response)

    spell.description = spell_details["desc"]
    spell.range = spell_details["range"]
    spell.components = spell_details["components"]
    spell.duration = spell_details["duration"]

    binding.pry
  end
  # def self.spells(spell_name)
  #
  #   url = "https://www.dnd5eapi.co/api/spells"
  #   response = Net::HTTP.get(URI(url))
  #   spell_info_hash = JSON.parse(response)
  #
  #   name = spell_info_hash["name"]
  #   desc = spell_info_hash["desc"]
  #   range = spell_info_hash["range"]
  #
  #       Spell.new(name: name, description: desc,range: range )
  #
  # end

end
## service file/class responsible for communicating with api.
##going out to it, getting info, and returning it
