require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "has many albums" do
    player = Player.new
    album = Album.new(name: 'test')
    assert album.valid?
    album.save!
    player.name = 'test' 
    player.albums << album
    assert player.valid?
    assert player.save!
    assert player.albums.count == 1
  end

  test "valid player" do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end
end
