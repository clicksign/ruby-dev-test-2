class RemovePlayerReferenceToAlbum < ActiveRecord::Migration[5.2]
  def self.up
    remove_column :albums, :player_id
  end

  def self.down
    add_reference :albums, :player
  end
end
