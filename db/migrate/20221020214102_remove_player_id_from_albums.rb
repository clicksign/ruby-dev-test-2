class RemovePlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:albums, :player, index: true)
  end
end
