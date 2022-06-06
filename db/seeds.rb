15.times do |i|
  Album.create(
    name: Faker::Music.album
  )
end

Album.all.each do |album|
  rand(1..5).times do |i|
    album.players.create(name: Faker::Music.band)
  end
end
