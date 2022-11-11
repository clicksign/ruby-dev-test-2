class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.album :references, foreign_key: true
      t.player :references, foreign_key: true

      t.timestamps
    end
  end
end
