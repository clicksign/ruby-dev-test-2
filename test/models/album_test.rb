require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', players: [players(:shakira)])
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of players" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end

  test "can have many albums" do
    album = Album.new(name: 'Shakira in Concert', players: [players(:shakira), players(:madonna)])
    assert album.valid?
    assert album.save
    assert_equal 2, album.players.count
  end
end
