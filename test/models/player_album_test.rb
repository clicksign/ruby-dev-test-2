require 'test_helper'

class PlayerAlbumTest < ActiveSupport::TestCase
  test "Player has new album" do
    player = Player.new(name: "Madonna")
    player.albums.build(name: "New album")
    player.save

    assert player.player_albums.count == 1
  end

  test "Album has a new player" do
    album = Album.new(name: "Shakaboom")
    album.players.build(name: "Shakira")
    album.save

    assert album.player_albums.count == 1
  end
end
