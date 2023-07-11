class TreatingHistoryDatasOfAlbumsAndPlayers < ActiveRecord::Migration[7.0]
  def up
    return unless Album.attribute_names.include? 'player_id'

    ActiveRecord::Base.transaction do
      Album.find_each(batch_size: 500) do |album|
        next if album.player_id.blank?

        AlbumPlayer.create!(
          album_id: album.id,
          player_id: album.player_id
        )
      end
    end
  end

  def down
    return if AlbumPlayer.count.zero?

    ActiveRecord::Base.transaction do
      AlbumPlayer.delete_all!
    end
  end
end
