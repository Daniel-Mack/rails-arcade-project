class ChangeFunTypeToStringForGames < ActiveRecord::Migration[5.2]
  def change
    change_column :games, :fun_rating, :string
  end
end
