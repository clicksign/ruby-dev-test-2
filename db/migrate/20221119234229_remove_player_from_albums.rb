class RemovePlayerFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_reference :albums, :player
  end
end
