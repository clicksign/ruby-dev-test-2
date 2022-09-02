class CreateJoinTableAlbumPlayer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players do |t|
      t.index [:album_id, :player_id]
    end
  end
end
