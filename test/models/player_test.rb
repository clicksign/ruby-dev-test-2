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

  test "presence of album" do
    player = Player.new(name: "Shakira")

    ["Solo", "Feat Madonna"].each do |album|
      player.albums.build(name: album)
    end

    assert player.valid?
    assert player.albums.count == 2
  end
end
