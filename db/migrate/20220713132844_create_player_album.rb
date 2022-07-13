class CreatePlayerAlbum < ActiveRecord::Migration[6.1]
  def change
    create_table :player_albums do |t|
      t.references :player, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end

    remove_column :albums, :player_id
  end
end
