class Game < ApplicationRecord
  has_many :characters
  has_many :players, through: :characters
end
