class CreateAlbumsPlayersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :albums, :players
  end
end
