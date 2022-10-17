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

  test "presence of players" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end

  test "album with multiples players" do
    album = Album.new
    album.name = "album 01"
    album.players << players(:beyonce)
    album.players << players(:shakira)
    album.save

    assert_equal 2, album.players.count
    assert_equal 'Beyonce', album.players[0].name
    assert_equal 'Shakira', album.players[1].name
  end
end
