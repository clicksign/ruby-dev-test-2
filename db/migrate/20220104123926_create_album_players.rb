class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.references :album, foreign_key: true, null: false
      t.references :player, foreign_key: true, null: false

      t.timestamps
    end
  end

  def down
    drop_table :album_players
  end
end
