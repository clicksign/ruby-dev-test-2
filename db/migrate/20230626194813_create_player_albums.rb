class CreatePlayerAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :player_albums, id: false do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true
    end

    add_index :player_albums, [:album_id, :player_id], unique: true
  end
end
