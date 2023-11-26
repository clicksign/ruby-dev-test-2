class RemovePlayerRefFromAlbums < ActiveRecord::Migration[5.2]
  def up
    remove_reference :albums, :player
  end

  def down
    add_reference :albums, :player, index: true, foreign_key: true
  end
end
