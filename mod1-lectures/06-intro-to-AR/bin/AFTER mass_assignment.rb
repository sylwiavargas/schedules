require_relative "../config/environment"

class Clown
  attr_accessor :name, :age, :fears, :skill

  def initialize(args_hash)
    args_hash.each do |key, value|
          # binding.pry
      self.send("#{key}=", value)
    end
  end

end

def initialize(args_hash)
  @name = args_hash[0]
  @name = args_hash[:name]
end

krusty = Clown.new(
  name: "Krusty", 
  fears: "Children", 
  age: 2, 
  skill: "Juggling Chainsaws"
)

pennywise = Clown.new(
  age: 12_000, 
  name: "Pennywise", 
  fears: "Courage and heart", 
  skill: "Knows what you're scared of"
)

binding.pry
"🤡 yay 🤡"