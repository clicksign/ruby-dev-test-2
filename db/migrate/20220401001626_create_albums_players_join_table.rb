class CreateAlbumsPlayersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players do |table|
      table.index :album_id
      table.index :player_id
    end
  end
end
