class CreateAlbumPlayerJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players, id: false do |t|
      t.belongs_to :album_id
      t.belongs_to :player_id
      t.index [:album_id, :player_id], unique: true
    end

    remove_column :albums, :player_id
    remove_column :players, :album_id
  end
end
