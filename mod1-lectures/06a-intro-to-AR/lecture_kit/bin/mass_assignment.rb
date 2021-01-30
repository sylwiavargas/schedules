require_relative "../config/environment"

class Clown
  attr_accessor :name, :age, :fear, :skill

  def initialize(parameter_hash)
    # how can we dynamically assign the values to the instance variables and still make it safe?
    parameter_hash.each do |key, value|
      # self.send(:name=, value)
      # self.send("#{:name}=", value)
      self.send("#{key}=", value)
    end
    # @name = parameter_hash[:name]
    # @age = parameter_hash[:age]
    # @skill = parameter_hash[:skill]
    # @fear = parameter_hash[:fear]
  end

end

# krusty = Clown.new("Krusty", 42, "baloons", "chainsaws")
krusty = Clown.new(name: "Krusty", age: 42, skill: "chainsaws", fear: "baloons")

binding.pry
"🤡 yay 🤡"