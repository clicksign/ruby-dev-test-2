class RemovesPlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :albums, :players

    remove_column :albums, :player_id
  end
end
