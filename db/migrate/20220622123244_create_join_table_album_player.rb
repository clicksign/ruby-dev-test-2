class CreateJoinTableAlbumPlayer < ActiveRecord::Migration[5.2]
  def change
    create_join_table(:albums, :players) do |t|
      t.index %i[album_id player_id]
      t.foreign_key :albums
      t.foreign_key :players
    end

    reversible do |dir|
      dir.up do
        execute('INSERT INTO albums_players(album_id, player_id) '\
                'SELECT id, player_id FROM albums')

      end
    end
  end
end
