namespace :update_association do
  task albums: :environment do
    Album.all.each do |album|
      PlayersAlbum.find_or_create_by(album_id: album.id, player_id: album.player.id)
    end
  end
end
