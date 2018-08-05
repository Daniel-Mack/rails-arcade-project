# frozen_string_literal: true

# :nodoc:
class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :difficulty_level
      t.integer :fun_rating

      t.timestamps
    end
  end
end
