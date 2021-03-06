# frozen_string_literal: true

# :nodoc:
class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end
