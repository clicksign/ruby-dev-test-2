require_relative '../test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "valid relations for player" do
    player = Player.new(name: 'Player1')
    ['Album1', 'Album2'].each do |album|
      player.albums << Album.new(name: album)
    end
    player.save!
    assert player.albums.count == 2
  end

  test "valid relations for album" do
    album = Album.new(name: 'Album1')
    ['Player1', 'Player2'].each do |player|
      album.player << Player.new(name: player)
    end
    album.save!
    assert album.player.count == 2
  end
end