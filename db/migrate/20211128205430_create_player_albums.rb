class CreatePlayerAlbums < ActiveRecord::Migration[5.2]
  def up
    create_table :player_albums do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end

    Album.all.each do |a|
      PlayerAlbum.create(player_id: a.player_id, album_id: a.id)
    end
  end

  def down
    drop_table :player_albums
  end
end
