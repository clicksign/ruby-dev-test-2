class FixAlbumRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_reference :albums, :player, foreign_key: true
    add_index(:album_players, %i[player_id album_id], unique: true)
  end

  def down
    remove_index(:album_players, %i[player_id album_id])
    add_reference :albums, :player, foreign_key: true
  end
end
