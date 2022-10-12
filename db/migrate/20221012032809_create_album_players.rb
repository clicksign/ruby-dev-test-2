class CreateAlbumPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_players do |t|
      t.references :album
      t.references :player

      t.timestamps
    end
  end
end
