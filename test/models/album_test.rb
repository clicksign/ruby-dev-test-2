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

  test "presence of player" do
    album = Album.new(name: "The new one")

    ["Shakira", "Madonna"].each |player|
      album.players.build(name: player)
    end

    assert album.valid?
    assert album.players.count == 2
  end
end
