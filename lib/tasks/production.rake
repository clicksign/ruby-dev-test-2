namespace :production do
    desc "Popula a join table 'AlbumPlayers' com os albuns que possuem cantores"
    task :populate_album_players, [:album_id] => [:environment] do |task, args|
        albums = Album.where.not(player_id: nil)
                .where("id <= #{args[:album_id].to_i}")
        
        albums.each do |album|
            album.partnerships.create(player: album.player)
        end
    end
end
