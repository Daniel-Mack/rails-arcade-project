# frozen_string_literal: true

# :nodoc:
class AddAgeToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :age, :integer
  end
end
