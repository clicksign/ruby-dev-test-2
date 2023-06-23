class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true
      t.index [:player_id, :album_id], unique: true

      t.timestamps
    end
  end
end
