class RemovePlayerFromAlbums < ActiveRecord::Migration[5.2]
  def up
    remove_reference :albums, :player, foreign_key: true
  end

  def down 
    add_reference :albums, :player, foreign_key: true, index: true
  end
end
