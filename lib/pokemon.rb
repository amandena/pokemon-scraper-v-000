class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    pokemon = db.execute("SELECT pokemon.name FROM pokemon WHERE pokemon.id = id")
    binding.pry
    pikachu = pokemon[0][0].save(name, type, db)
    pikachu
  end
end
