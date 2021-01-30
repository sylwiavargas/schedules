Plant.destroy_all

snake_plant = Plant.create(name: "snake plant", color: "green", height: 1, difficult: false)

fern = Plant.create(name: "fern", color: "green", height: 1, difficult: true)

corn_tree = Plant.create(name: "corn tree", color: "green", height: 2, difficult: false)


10.times do
    num = rand(1...3)
    bool_choice = [true, false].sample

    Plant.create(name: Faker::Food.vegetables, color: Faker::Color.color_name, height: num, difficult: bool_choice)
end

puts "🥬 🥬 SEEDED 🥬 🥬"