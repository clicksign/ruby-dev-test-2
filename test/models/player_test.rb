require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = players(:beyonce)
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test "players can have multiple albums" do
    player = players(:shakira)
    album1 = albums(:fijacion)
    album2 = albums(:fixation)

    assert_operator player.albums.size, :>=, 2
    assert_includes player.albums, album1
    assert_includes player.albums, album2
  end
end
