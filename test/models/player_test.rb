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

  test "multiple albums" do
    player = Player.new(name: 'Shakira', albums: [albums(:fijacion), albums(:fixation)])
    assert player.valid?
  end
end
