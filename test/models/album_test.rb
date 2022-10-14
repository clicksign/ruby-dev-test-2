require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', players: [ players(:shakira) ])
    assert album.valid?
  end

  test "valid album - two players" do
    album = Album.new(name: 'Peligro', players: [ players(:shakira), players(:beyonce) ])
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
    assert_not_empty album.errors[:players]
  end

  test "album has players" do
    album = Album.new(name: 'Peligro', players: [ players(:shakira), players(:beyonce) ])
    assert album.players.size == 2
  end
end
