class RemovePlayerFromAlbum < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :albums, column: :player_id
  end
end
