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

  test "presence of player" do
    album = Album.new    
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end

  test "presence more than one player" do
    album = Album.new(name: 'Peligro')
    album.players << players(:shakira)
    album.players << players(:madonna)    
    album.save
    assert album.valid?
    assert_equal(2, album.players.count)
  end
end
