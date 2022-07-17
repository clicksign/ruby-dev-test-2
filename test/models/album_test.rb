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

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end

  test "player can have multiple albums" do
    shakira = players(:shakira)
    madona = Player.new(name: "Madona")
    album = Album.new(name: "New Album", players: [shakira, madona])

    assert album.save!
    assert_equal 2, album.players.size
  end
end
