class CreateAlbumsAndPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players, id: false do |t|
      t.belongs_to :album
      t.belongs_to :player
    end
  end
end
