class CreatePlayersAlbumsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :albums, id: false do |t|
      t.belongs_to :player
      t.belongs_to :album
    end
  end
end
