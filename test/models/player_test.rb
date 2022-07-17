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

  test "player can have multiple albums" do
    fields_of_the_nephilim = Player.new(name: "Fields of the Nephilim")
    fields_of_the_nephilim.albums << Album.new(name: "Dawnrazor") <<
      Album.new(name: "The Nephilim")

    assert_equal 2, fields_of_the_nephilim.albums.size
  end
end
