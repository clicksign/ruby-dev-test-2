class RemovePlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :player, :reference
  end
end
