require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = albums(:virgin)

    assert album.valid?
  end

  test "presence of name" do
    album = albums(:virgin)
    album.name = nil

    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of players" do
    album = albums(:virgin)
    album.players = []

    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
