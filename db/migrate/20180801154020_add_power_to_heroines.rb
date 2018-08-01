class AddPowerToHeroines < ActiveRecord::Migration[5.2]
  def change
    add_column :heroines, :power, :string
  end
end
