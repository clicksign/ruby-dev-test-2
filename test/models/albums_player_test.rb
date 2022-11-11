require 'test_helper'

class AlbumsPlayerTest < ActiveSupport::TestCase
  test "valid albums_player" do
    albums_player = AlbumsPlayer.new(album: albums(:fijacion), player: players(:shakira))
    assert albums_player.valid?
  end

  test "multiple albums_player" do
    albums_player = AlbumsPlayer.new(album: albums(:some_girls), players: [players(:shakira), players(:madonna)])
    assert albums_player.valid?
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
