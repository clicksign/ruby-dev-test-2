class CreatePlayersAlbums < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums do |t|
      t.index :player_id
      t.index :album_id
    end
  end
end
