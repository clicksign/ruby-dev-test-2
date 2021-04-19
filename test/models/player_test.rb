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

  test "deletes player but not album since it can have 2 players in one album" do
    player = Player.new(name: "Shakira")

    ["Solo", "Feat Madonna"].each do |album|
      player.albums.build(name: album)
    end

    player.save
    player.destroy
    assert Album.find_by(name: "Solo").present? == true
  end
end
