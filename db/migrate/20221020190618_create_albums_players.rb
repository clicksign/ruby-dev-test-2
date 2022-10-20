class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.belongs_to :album, null: false
      t.belongs_to :player, null: false
    end
  end
end
