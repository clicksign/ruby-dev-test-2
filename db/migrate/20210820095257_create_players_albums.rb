class CreatePlayersAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :players_albums, id: false do |t|
      t.belongs_to :album
      t.belongs_to :player
    end
  end
end
