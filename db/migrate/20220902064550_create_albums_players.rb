class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.references :album, null: false, foreign_key: true, index: true
      t.references :player, null: false, foreign_key: true, index: true
    end
  end
end
