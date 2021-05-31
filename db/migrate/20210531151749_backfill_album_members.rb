class BackfillAlbumMembers < ActiveRecord::Migration[5.2]
  def up
    Album.find_each(batch_size: 250) do |album|
      AlbumMember.create(album_id: album.id, player_id: album.player_id)
    end
  end

  def down
    AlbumMember.delete_all
  end
end
