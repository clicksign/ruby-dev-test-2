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

  test "player with multiples albums" do
    player = Player.new
    player.name = "player 01"
    player.albums << albums(:fijacion)
    player.albums << albums(:fixation)
    player.save

    assert_equal 2, player.albums.count
    assert_equal 'Fijación Oral, Vol. 1', player.albums[0].name
    assert_equal 'She Wolf', player.albums[1].name
  end
end
