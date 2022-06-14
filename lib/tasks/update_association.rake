namespace :update_association do

  desc "Update Association: player to players"
  task albums: :environment do
    Album.all.each do |album|
      PlayersAlbum.find_or_create_by(album_id: album.id, player_id: album.player.id)
      album.player = nil
      album.save
    end
  end
end
