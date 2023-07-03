class CreateAlbumPlayers < ActiveRecord::Migration[7.0]
  def up
    create_table :album_players do |t|
      t.references :player, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :album_players
  end
end
