class Api

  def self.spell_get_call
    url = "https://www.dnd5eapi.co/api/spells"
    response = Net::HTTP.get(URI(url))
    spell_info = JSON.parse(response)["results"]

      spell_info.each do |spell_list|
          Spell.new(name: spell_list["name"],index: spell_list["index"])
      end

  end


  def self.spell_info_call(spell)
    url = "https://www.dnd5eapi.co/api/spells/#{spell.index}"
    response = Net::HTTP.get(URI(url))
    spell_details = JSON.parse(response)

    spell.description = spell_details["desc"]
    spell.range = spell_details["range"]
    spell.components = spell_details["components"]
    spell.duration = spell_details["duration"]
  end
end
