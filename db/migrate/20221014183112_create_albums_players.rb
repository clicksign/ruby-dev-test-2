class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def up
    create_table :albums_players, id: false do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true
    end
  end

  def down
    drop_table :albums_players
  end
end
