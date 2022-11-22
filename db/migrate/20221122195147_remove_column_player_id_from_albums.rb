class RemoveColumnPlayerIdFromAlbums < ActiveRecord::Migration[5.2]
  def up
    remove_column :albums, :player_id, :integer
  end

  def down
    add_column :albums, :player_id, :integer

    if Album.method_defined? :authorships
      Album.includes(:authorships).find_each do |album|
        album.update_column(:player_id, album.authorships.first.player_id)
      end
    end

    add_foreign_key :albums, :players
    add_index :albums, :player_id
  end
end
