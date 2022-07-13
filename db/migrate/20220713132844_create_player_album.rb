class CreatePlayerAlbum < ActiveRecord::Migration[6.1]
  def change
    create_table :albums_players do |t|
      t.references :album, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.index [:album_id, :player_id], unique: true
      t.timestamps
    end

    remove_column :albums, :player_id
  end
end
