class CreateJoinTablePlayerAlbum < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums do |t|
      # t.index [:player_id, :album_id]
      # t.index [:album_id, :player_id]
    end
  end
end
