require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    players = [players(:shakira), players(:beyonce)]
    album = Album.new(name: 'Peligro', players: players)
    assert album.players[0].name == 'Shakira'
    assert album.players[1].name == 'Beyonce'
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of players" do
    album = Album.new
    assert_not album.valid?
    assert_empty album.errors[:players]
  end
end
