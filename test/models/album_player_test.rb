require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "presence of album" do
    album = AlbumPlayer.new player: players(:shakira)
    assert_not album.valid?
    assert_not_empty album.errors[:album]
  end

  test "presence of player" do
    album = AlbumPlayer.new album: albums(:fixation)
    assert_not album.valid?
    assert_not_empty album.errors[:player]
  end
end
