require 'test_helper'

class PlayerAlbumTest < ActiveSupport::TestCase
  test "valid album" do
    player_album = PlayerAlbum.new(player: players(:shakira), album: albums(:fijacion))
    assert player_album.valid?
  end

  test "presence of player" do
    player_album = PlayerAlbum.new
    assert_not player_album.valid?
    assert_not_empty player_album.errors[:player]
  end

  test "presence of album" do
    player_album = PlayerAlbum.new
    assert_not player_album.valid?
    assert_not_empty player_album.errors[:album]
  end

end
