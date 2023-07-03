require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "valid album player" do
    album_player = AlbumPlayer.new(album: albums(:fixation), player: players(:shakira))

    assert album_player.valid?
  end

  test "presence of album" do
    album_player = AlbumPlayer.new(player: players(:shakira))

    assert_not album_player.valid?
    assert_not album_player.save
  end

  test "presence of player" do
    album_player = AlbumPlayer.new(album: albums(:music))

    assert_not album_player.valid?
    assert_not album_player.save
  end
end
