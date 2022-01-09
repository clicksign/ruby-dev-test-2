namespace :production do
    desc "Popula o Banco aos poucos em produção aplicando um join table em 'AlbumPlayers' com os albuns que possuem cantores"
    task :populate_album_players, [:album_id] => [:environment] do |task, args|
        albums_with_players = Album.where.not(player_id: nil)
                .where("id <= #{args[:album_id].to_i}")

        albums_with_players.each do |album|
            album.partnerships.create(player: album.player)
        end
    end
end