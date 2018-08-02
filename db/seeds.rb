# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

player1 = Player.create!(name: "Kynsin Viereth", password: "password", skill_level: "high", age: 18)
player2 = Player.create!(name: "Xeneth Lofie", password: "words", skill_level: "medium", age: 34)
player3 = Player.create!(name: "Kerune Dark", password: "random", skill_level: "low", age: 21)

game1 = Game.create!(name: "Donkey Kung", difficulty_level: "easy", fun_rating: "high")
game2 = Game.create!(name: "Merio Sisters", difficulty_level: "medium", fun_rating: "average")
game3 = Game.create!(name: "Senic 2", difficulty_level: "hard", fun_rating: "low")
game1 = Game.create!(name: "Legend of Zolda", difficulty_level: "hard", fun_rating: "high")
game2 = Game.create!(name: "Pokeman Yellow", difficulty_level: "medium", fun_rating: "low")
game3 = Game.create!(name: "Metal Greed Frozen", difficulty_level: "hard", fun_rating: "low")

character1 = Character.create!(name: "BK", player_id: 1, game_id: 1, picture: "https://imgur.com/ouqxiFu")
character2 = Character.create!(name: "Biddy Kong", player_id: 2, game_id: 1, picture: "https://imgur.com/M1Nhpv7")
character3 = Character.create!(name: "Zolda", player_id: 3, game_id: 4, picture: "https://imgur.com/gVKvy6H")
character3 = Character.create!(name: "Lank", player_id: 2, game_id: 4, picture: "https://imgur.com/nBSu4IP")
character3 = Character.create!(name: "Meria", player_id: 3, game_id: 2, picture: "https://imgur.com/5H6PW46")
character3 = Character.create!(name: "Luaga", player_id: 3, game_id: 2, picture: "https://imgur.com/LNLWeji")
character3 = Character.create!(name: "Senic", player_id: 1, game_id: 3, picture: "https://imgur.com/H0avXsX")
character3 = Character.create!(name: "Toils", player_id: 2, game_id: 3, picture: "https://imgur.com/g2zBa4x")
character3 = Character.create!(name: "Ash Ketchup", player_id: 2, game_id: 5, picture: "https://imgur.com/KMj4sPa")
character3 = Character.create!(name: "Brook", player_id: 3, game_id: 5, picture: "https://imgur.com/hsTeVua")
character3 = Character.create!(name: "Snack", player_id: 1, game_id: 6, picture: "https://imgur.com/qa6dLb9")
character3 = Character.create!(name: "Raided", player_id: 3, game_id: 6, picture: "https://imgur.com/1YVsWr4")
