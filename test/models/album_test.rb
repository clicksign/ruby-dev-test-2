require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')
    album.save
    album.players << players(:shakira)
    assert album.valid?
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

  test "presence of n players" do
    album = Album.new(name: "Waka Waka")
    album.save
    album.players << players(:beyonce)
    album.players << players(:shakira)
    album.players << players(:madonna)
    assert_equal(album.players.size, 3)
  end
end