require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', players: [players(:shakira)])
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "players association" do
    albums_players = [players(:shakira), players(:beyonce)]
    album = Album.new(name: 'Beautiful Liar', players: albums_players)
    assert_not_empty album.players
  end
end
