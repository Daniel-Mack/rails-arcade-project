# frozen_string_literal: true

# :nodoc:
class Player < ApplicationRecord
  has_many :characters
  has_many :games, through: :characters
  validates :name, presence: true
  validates_format_of :name, with: /\A[a-zA-Z\d ]*\z/i
  validates :age, numericality: { only_integer: true }
  has_secure_password

  scope :not_me, -> (current_player) {where.not(name: current_player.name)}
end
