class RemovePlayerReferenceFromAlbums < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def up
    remove_reference :albums, :player, index: true
  end

  def down
    add_reference :albums, :player
    add_index :albums, :player_id, name: 'index_albums_on_player_id', algorithm: :concurrently
  end
end
