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

  test "many albums" do
    player = Player.new(name: 'Madonna')
    player.albums << Album.new(name: 'xyz')
    player.albums << Album.new(name: 'abc')
    assert_not_empty player.albums
  end
end
