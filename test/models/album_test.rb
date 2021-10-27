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

  test "presence of players" do
    album = Album.new(name: 'She Wolf')
    album.players << Player.new(name: 'Shakira')
    album.players << Player.new(name: 'Madonna')
    assert album.valid?
    assert_not_empty album.players
  end
end
