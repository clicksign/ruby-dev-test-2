require_relative '../test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')
    assert album.valid?
  end

  test "multiple valid players for album" do
    album = Album.new(name: 'Album1')
    ['Player1', 'Player2'].each do |player|
      album.player << Player.new(name: player)
    end
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
  end

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
  end
end
