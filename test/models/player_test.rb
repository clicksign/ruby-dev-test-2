require_relative '../test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test "multiple valid albums for player" do
    player = Player.new(name: 'Player1')
    ['Album1', 'Album2'].each do |album|
      player.albums << Album.new(name: album)
    end
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
  end
end
