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
    albums = albums(:fixation, :she_wolf)
    player = Player.new(name: 'Dollynho', albums: albums)

    assert player.valid?
    assert_equal albums.size, 2
  end
end
