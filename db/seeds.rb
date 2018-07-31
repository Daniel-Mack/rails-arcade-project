# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

player1 = Player.create!(name: "Kynsin Viereth", password: "password", skill_level: "high")
player2 = Player.create!(name: "Xeneth Lofie", password: "words", skill_level: "medium")
player3 = Player.create!(name: "Kerune Dark", password: "random", skill_level: "low")

game1 = Game.create!(name: "Donkey Kung", difficulty_level: "easy", fun_rating: "high")
game2 = Game.create!(name: "Merio Sisters", difficulty_level: "medium", fun_rating: "medium")
game3 = Game.create!(name: "Senic 2", difficulty_level: "hard", fun_rating: "low")

character1 = Character.create!(name: "Bill", player_id: 1, game_id: 1)
character2 = Character.create!(name: "Zen", player_id: 2, game_id: 2)
character3 = Character.create!(name: "Ryu", player_id: 3, game_id: 3)
