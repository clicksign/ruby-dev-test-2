require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "valid player_albums" do
    player_albums = PlayerAlbum.new(player: players(:shakira), album: albums(:she_wolf))
    assert player_albums.valid?
  end

  test "presence of player" do
    player_albums = PlayerAlbum.new
    assert_not player_albums.valid?
    assert_not_empty player_albums.errors[:player]
  end

  test "presence of album" do
    player_albums = PlayerAlbum.new
    assert_not player_albums.valid?
    assert_not_empty player_albums.errors[:album]
  end
end
