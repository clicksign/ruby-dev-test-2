namespace :albums do
  desc "Ensure albums player before remove player reference from albums"
  task :ensure_albums_before_reference => :environment do
    albums = Album.includes(:player)
    albums.each do |album|
      AlbumsPlayer.find_or_create_by(album_id: album.id, player_id: album.player_id)
    end
  end
end
