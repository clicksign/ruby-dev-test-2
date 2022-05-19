require 'test_helper'

class AlbumsPlayerTest < ActiveSupport::TestCase
  test "valid albums player" do
    album = albums(:help)
    player = players(:paul)
    album_player = AlbumsPlayer.new(album: album, player: player)
    assert album_player.valid?
  end

  test "presence of album" do
    album_player = AlbumsPlayer.new
    assert_not album_player.valid?
    assert_not_empty album_player.errors[:album]
  end
  
  test "presence of player" do
    album_player = AlbumsPlayer.new
    assert_not album_player.valid?
    assert_not_empty album_player.errors[:player]
  end
end
