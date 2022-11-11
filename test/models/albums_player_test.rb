require 'test_helper'

class AlbumsPlayerTest < ActiveSupport::TestCase
  test "valid albums_player" do
    albums_player = AlbumsPlayer.new(album: albums(:fijacion), player: players(:shakira))
    assert albums_player.valid?
  end

  test "multiple players for one album" do
    album_shakira = AlbumsPlayer.new(album: albums(:some_girls), player: players(:shakira))
    album_madonna = AlbumsPlayer.new(album: albums(:some_girls), player: players(:madonna))
    assert album_shakira.valid?
    assert album_madonna.valid?
  end

  test "presence of album" do
    albums_player = AlbumsPlayer.new
    assert_not albums_player.valid?
    assert_not_empty albums_player.errors[:album]
  end

  test "presence of player" do
    albums_player = AlbumsPlayer.new
    assert_not albums_player.valid?
    assert_not_empty albums_player.errors[:player]
  end
end
