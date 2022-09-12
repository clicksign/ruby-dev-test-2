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

  test "has many albums" do
    player = Player.new(name: 'João Gordo')
    player.save!
    player.albums.create(name: 'Crucificados Pelo Sistema')
    player.albums.create(name: 'Anarcofobia')

    assert_equal 2, player.albums.count
  end
end
