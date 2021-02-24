class AddRelationAlbunsAndPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players, id: false do |t|
      t.belongs_to :player
      t.belongs_to :album
    end
  end
end
