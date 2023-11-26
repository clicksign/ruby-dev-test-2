class AddIndexNameToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_index :albums, :name, unique: true
  end
end
