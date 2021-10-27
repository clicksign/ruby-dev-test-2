class CreateAlbumsPlayersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players

    add_index(:albums_players, [:album_id, :player_id], :unique => true)
  end
end
