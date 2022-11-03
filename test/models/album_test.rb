require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = albums(:fijacion)
    assert album.valid?
  end

  test "valid album associations" do
    album = albums(:fijacion)
    album_players(:fijacion_beyonce)
    album_players(:fijacion_shakira)

    assert album.valid?
    assert_equal 2, album.players.count
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end
end
