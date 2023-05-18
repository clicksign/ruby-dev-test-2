class CreatePlayerAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :player_albums do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true
      t.string :name
      

      t.timestamps
    end
  end
end
