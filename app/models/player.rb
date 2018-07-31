class Player < ApplicationRecord
  has_many :games
  has_many :characters, through: :games
  has_secure_password
end
