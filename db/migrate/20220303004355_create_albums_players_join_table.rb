class CreateAlbumsPlayersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players do |t|
      t.index :album_id
      t.index :player_id
    end  
  end
end
