class CreatePlayerAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :player_albums do |t|
      t.belongs_to :player, index: true
      t.belongs_to :album, index: true

      t.timestamps
    end
  end
end
