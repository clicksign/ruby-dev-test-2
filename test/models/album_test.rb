require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')
    album.players << players(:shakira)
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "invalid with no players" do
    album = Album.new(name: 'Piece of Mind')
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
