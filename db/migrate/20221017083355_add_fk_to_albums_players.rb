class AddFkToAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :album_players, :albums
    add_foreign_key :album_players, :players
  end
end
