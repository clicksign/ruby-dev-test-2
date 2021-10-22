desc 'Create Cleaners with variety'
task :remove_player_reference_from_albums, [:album_id] => [:environment] do |_t, args|
  albums_with_player = Album.where('id <= ?', args[:album_id].to_i)
                            .where.not(player_id: nil)

  albums_with_player.each do |album|
    album.partnerships.create(player: album.player)
  end
end
