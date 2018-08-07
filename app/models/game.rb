# frozen_string_literal: true

# :nodoc:
class Game < ApplicationRecord
  has_many :characters
  has_many :players, through: :characters
  validates :name, presence: true
  validates_format_of :name, with: /\A[a-zA-Z\d ]*\z/i
end
