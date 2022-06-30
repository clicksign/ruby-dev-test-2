class RemovePlayerFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :player_id, :integer
  end
end
