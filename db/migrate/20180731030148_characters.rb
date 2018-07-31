class Characters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :player_id, :integer
               :characters, :game_id, :integer
  end
end
