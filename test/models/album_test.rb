require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', player: players(:shakira))
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end


  test "presence of players" do
    shakira = Player.create(name: 'Shakira')
    madona = Player.create(name: 'Madona')
    madona_album = shakira.albums.create(name:' Album Madona', player_id: madona)
    assert madona_album.valid?
  end
end
