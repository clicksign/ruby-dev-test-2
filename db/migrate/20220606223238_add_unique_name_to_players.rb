class AddUniqueNameToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_index :players, :name, unique: true
  end
end
