# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.destroy_all

puts "======================="

Ability.destroy_all

puts "Seeding abilities..."

abilities = [{name: "Strength"},
             {name: "Intelligence"},
             {name: "Wisdom"},
             {name: "Dexterity"},
             {name: "Constitution"},
             {name: "Looks"},
             {name: "Charisma"}]

Ability.create!(abilities)

puts "======================="
puts "Done!"
puts "======================="

puts "======================="

Race.destroy_all

puts "Seeding races..."

races = [{name: "Half-Orc", description: "Half-Orc description"},
         {name: "Gnome", description: "Gnome description"},
         {name: "Gnome Titan", description: "Gnome Titan description"},
         {name: "Half-Elf", description: "Half-Elf description"},
         {name: "Half-Hobgoblin", description: "Half-Hobgoblin description"},
         {name: "Grel", description: "Grel description"},
         {name: "Elf", description: "Elf description"},
         {name: "Human", description: "Human description"},
         {name: "Dwarf", description: "Dwarf description"},
         {name: "Halfling", description: "Halfling description"}]

Race.create!(races)

puts "======================="
puts "Done!"
puts "======================="