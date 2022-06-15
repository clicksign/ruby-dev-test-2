class CreatePlayersAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :players_albums do |t|
      t.references :album, foreign_key: true
      t.references :player, foreign_key: true
    end
  end
end
