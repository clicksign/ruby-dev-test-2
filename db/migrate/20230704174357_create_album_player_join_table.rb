class CreateAlbumPlayerJoinTable < ActiveRecord::Migration[5.2]
  def up
    create_table :albums_players, id: false do |t|
      t.belongs_to :album
      t.belongs_to :player
    end

    add_index :albums_players, [:album_id, :player_id], unique: true
  end

  def down
    remove_index :albums_players, [:album_id, :player_id]
    drop_table :albums_players
  end
end
