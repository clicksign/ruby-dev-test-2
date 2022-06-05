class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true
    end

    add_index :albums_players, [:player_id, :album_id], unique: true
  end
end
