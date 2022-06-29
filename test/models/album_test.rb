require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  test "has many players" do
    album = Album.new
    player = Player.create(name: 'test')
    album.name = 'test' 
    album.players << player
    assert album.valid?
    assert album.save!
    assert album.players.count == 1
  end

  test "valid album" do
    album = Album.new(name: 'Peligro', player: players(:shakira))
    assert album.valid?
    album = Album.new(name: 'Peligro', player: nil)
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end
end
