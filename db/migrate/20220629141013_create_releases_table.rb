class CreateReleasesTable < ActiveRecord::Migration[5.2]
  def up
    create_table :releases do |t|
      t.references :album, :player
      t.timestamps
    end
    Album.all.each do |album|
      Release.create(album_id: album.id, player_id: album.player_id)
    end
    change_column :albums, :player_id, :integer, null: true
  end

  def down
    drop_table :releases
    change_column :albums, :player_id, :integer, null: false
  end
end
