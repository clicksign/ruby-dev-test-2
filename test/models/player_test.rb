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

  test "player has albums" do
    player = Player.create(name: 'Madonna')
    album = Album.create(name: 'Peligro', players: [ player ])
    assert player.valid?
    assert player.albums.size == 1
    assert player.albums.first == album
  end
end
