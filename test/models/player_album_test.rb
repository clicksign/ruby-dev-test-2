require 'test_helper'

class PlayerAlbumTest < ActiveSupport::TestCase
  test "valid player_album" do
    player_album = PlayerAlbum.new(album: albums(:fijacion), player: players(:shakira))
    assert player_album.valid?
  end

  test "presence of album" do
    player_album = PlayerAlbum.new
    assert_not player_album.valid?
    assert_not_empty player_album.errors[:album]
  end

  test "presence of player" do
    player_album = PlayerAlbum.new
    assert_not player_album.valid?
    assert_not_empty player_album.errors[:player]
  end
end
