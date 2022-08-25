require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album with one player" do
    album = Album.new(name: 'Peligro')
    album.players << players(:shakira)

    assert album.valid?
  end

  test "valid album with many players" do
    album = Album.new(name: 'Peligro')
    album.players << players(:shakira)
    album.players << players(:beyonce)
    album.save

    assert_equal 2, album.players.count
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
