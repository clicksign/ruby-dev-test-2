class CreatePlayerAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :player_albums do |t|
      t.references :player, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
      t.index [:player_id, :album_id], unique: true
    end
  end
end
