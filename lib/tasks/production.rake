namespace :production do
    desc "Popula a join table 'AlbumPlayers' com os albuns que possuem cantores"
    task :populate_album_players, [:start, :end] => [:environment] do |task, args|
        albums = Album.where.not(player_id: nil)
                .where("id >= #{args[:start].to_i}")
                .where("id <= #{args[:end].to_i}")
        
        albums.each do |album|
            album.partnerships.create(player: album.player)
        end
    end
end
