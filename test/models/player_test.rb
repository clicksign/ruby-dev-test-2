require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test "has album" do
    madonna = Player.new(name: 'Madonna')
    shakira = Player.new(name: 'Shakira')
    album = Album.new(name: 'Duo inConcert', players: [madonna, shakira])
    album.save

    assert madonna.albums.length == 1
    assert madonna.albums.first == album
    assert shakira.albums.length == 1
    assert shakira.albums.first == album
  end
end
