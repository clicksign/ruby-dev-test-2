class RemovePlayerFromAlbum < ActiveRecord::Migration[5.2]
  def change
    remove_reference :albums, :player, index: true, foreign_key: true
  end
end
