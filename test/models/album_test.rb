require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "can contain more than one player" do
    album = albums(:the_best_songs)
    album.players << players(:madonna, :shakira)
    assert_equal(2, album.players.size)
  end
end
