require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @shakira = players(:shakira)
    @beyonce = players(:beyonce)
    @she_wolf = albums(:fixation)
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

  test "associations" do
    @shakira.albums << @she_wolf
    @beyonce.albums << @she_wolf

    assert_equal 1, @shakira.albums.size
    assert_equal "She Wolf",  @beyonce.albums.first.name
    assert_equal 2,  @she_wolf.players.size
  end
end
