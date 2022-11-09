require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = players(:shakira)

    assert player.valid?
  end

  test "presence of name" do
    player = players(:shakira)
    player.name = nil

    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test "presence of albums" do
    player = players(:shakira)
    player.albums = []

    assert_not player.valid?
    assert_not_empty player.errors[:albums]
  end
end
