# frozen_string_literal: true

# frozen_string_literal: true

# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed
# command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
# { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.create!(name: 'Kynsin',
               password: 'password',
               skill_level: 'high',
               age: 18)

Player.create!(name: 'Xeneth',
               password: 'words',
               skill_level: 'medium',
               age: 34)

Player.create!(name: 'Kerune',
               password: 'Random',
               skill_level: 'Low',
               age: 21)

Game.create!(name: 'Donkey Kung',
             difficulty_level: 'Easy',
             fun_rating: 'High')

Game.create!(name:
            'Merio Sisters',
             difficulty_level: 'Medium',
             fun_rating: 'Average')

Game.create!(name: 'Senic 2',
             difficulty_level: 'Hard',
             fun_rating: 'Low')

Game.create!(name: 'Legend of Zolda',
             difficulty_level: 'Hard',
             fun_rating: 'High')

Game.create!(name: 'Pokeman Yellow',
             difficulty_level: 'Medium',
             fun_rating: 'Low')

Game.create!(name: 'Metal Gear Liquid',
             difficulty_level: 'Hard',
             fun_rating: 'Low')

Character.create!(name: 'BK', player_id: 1, game_id: 1)
Character.create!(name: 'Biddy Kong', player_id: 2, game_id: 1)
Character.create!(name: 'Meria', player_id: 3, game_id: 2)
Character.create!(name: 'Luaga', player_id: 1, game_id: 2)
Character.create!(name: 'Senic', player_id: 1, game_id: 3)
Character.create!(name: 'Shellman', player_id: 2, game_id: 3)
Character.create!(name: 'Zolda', player_id: 3, game_id: 4)
Character.create!(name: 'Lank', player_id: 2, game_id: 4)
Character.create!(name: 'Ash Ketchup', player_id: 2, game_id: 5)
Character.create!(name: 'Brook', player_id: 3, game_id: 5)
Character.create!(name: 'Snack', player_id: 1, game_id: 6)
Character.create!(name: 'Raided', player_id: 3, game_id: 6)
Character.create!(name: 'Shadow', player_id: 1, game_id: 1)
