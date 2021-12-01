class AddIndexToAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    add_index(:album_players, [:player_id, :album_id], unique: true)
  end
end
