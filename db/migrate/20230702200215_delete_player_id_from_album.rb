class DeletePlayerIdFromAlbum < ActiveRecord::Migration[6.1]
  def up
    remove_column :albums, :player_id
  end

  def down
    add_column :albums, :player_id, :integer
  end
end
