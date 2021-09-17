class CreateSplitAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :split_albums do |t|
      t.references :albums, foreign_key: true
      t.references :players, foreign_key: true
      t.timestamps
    end
  end
end
