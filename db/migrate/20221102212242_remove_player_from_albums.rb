class RemovePlayerFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_reference :albums, :player, foreign_key: true
  end
end
