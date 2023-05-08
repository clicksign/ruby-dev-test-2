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

  test "can have no album" do
    player = Player.new(name: 'Shakira', albums: [])
    assert player.valid?
    assert player.save
    assert_equal 0, player.albums.count
  end

  test "can have one album" do
    player = Player.new(name: 'Shakira', albums: [albums(:fijacion)])
    assert player.valid?
    assert player.save
    assert_equal 1, player.albums.count
  end

  test "can have many albums" do
    player = Player.new(name: 'Shakira', albums: [albums(:fijacion), albums(:fixation), albums(:she_wolf)])
    assert player.valid?
    assert player.save
    assert_equal 3, player.albums.count
  end
end
