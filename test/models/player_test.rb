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

  test "can contain more than one album" do
    player = players(:madonna)
    player.albums << albums(:the_best_songs, :the_love_songs)
    assert_equal(2, player.albums.size)
  end
end
