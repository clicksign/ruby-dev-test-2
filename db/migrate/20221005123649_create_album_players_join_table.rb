class CreateAlbumPlayersJoinTable < ActiveRecord::Migration[5.2]
  def up
    create_join_table :albums, :players do |t|
      t.index :album_id
      t.index :player_id
    end
  end

  def down
    drop_join_table :albums, :players
  end
end
