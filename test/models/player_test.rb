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

  test "association to albums" do
    album_1 = Album.new(name: 'As Melhores Tim Maia', players: [players(:shakira)])
    album_2 = Album.new(name: 'As Melhores Beyonce', players: [players(:beyonce)])
    player = Player.new(name: 'Tim Maia', albums: [album_1, album_2] )

    assert player.valid?
    assert_equal 2, player.albums.size
  end
end
