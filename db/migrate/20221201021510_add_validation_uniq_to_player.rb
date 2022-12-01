class AddValidationUniqToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_index :players, :name, unique: true
  end
end
