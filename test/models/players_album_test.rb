require 'test_helper'

class PlayersAlbumTest < ActiveSupport::TestCase
  test "player side association" do
    player = Player.new(name: 'Madonna')
    album = Album.new(name: 'Peligro')
    player.albums << album
    assert_not_empty player.albums
  end

  test "album side association" do
    player = Player.new(name: 'Madonna')
    album = Album.new(name: 'Peligro')
    album.players << player
    assert_not_empty album.players
  end
end
