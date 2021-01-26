class MigrateAlbumsAndPlayersRelationshipToParticipations < ActiveRecord::Migration[5.2]
  Album.find_each(batch_size: 100) do |album|
    player_id = album.player_id
    Participation.create!(album_id: album.id, player_id: player_id)
  end
end
