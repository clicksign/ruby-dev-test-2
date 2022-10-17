class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.references :album, foreign_key: false
      t.references :player, foreign_key: false
    end
  end
end