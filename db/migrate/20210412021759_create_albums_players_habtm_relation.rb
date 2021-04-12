class CreateAlbumsPlayersHabtmRelation < ActiveRecord::Migration[5.2]
  def up
    remove_reference :albums, :player, index: true

    create_table :albums_players, id: false do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true
    end
  end

  def down
    drop_table :albums_players
    add_reference :albums, :player, foreign_key: true
  end
end
