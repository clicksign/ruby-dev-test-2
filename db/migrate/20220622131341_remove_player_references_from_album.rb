class RemovePlayerReferencesFromAlbum < ActiveRecord::Migration[5.2]
  def change

    reversible do |dir|
      dir.up do
        remove_reference :albums, :player
      end

      dir.down do
        add_reference :albums, :player, foreign_key: true, index: true

        execute <<~SQL
          UPDATE albums
          SET player_id=(SELECT player_id
                         FROM albums_players
                         WHERE albums_players.album_id = albums.id)
        SQL
      end
    end
  end
end
