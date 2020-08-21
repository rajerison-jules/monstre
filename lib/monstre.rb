class Monstre

  include HTTParty

  base_uri 'fr.dofus.dofapi.fr'

  def initialize(type,id)

    @type = type

    @id = id

  end
  
  
  def get_monster #fonction pour recupérer les monstres

  getMonster = self.class.get("/monsters?filter[where][type]=#{@type}")

  return getMonster

  end

    
  def save_json(monsters) #fonction pour enregistrer dans un fichier json

    File.open("db/#{@id}.json","w") do |file|

    file.write(monsters.to_json)

    end

  end
    
    def perform

        list_monster = get_monster.parsed_response

        save_json(list_monster) 

    end
end