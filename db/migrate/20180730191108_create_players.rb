# frozen_string_literal: true

# :nodoc:
class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :password_digest
      t.string :skill_level

      t.timestamps
    end
  end
end
