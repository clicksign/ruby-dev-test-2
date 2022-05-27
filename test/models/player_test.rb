require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  def setup
    @madonna = players(:madonna)
    @shakira = players(:shakira)
    @album = albums(:the_best)
  end

  test "valid player" do
    assert @shakira.valid?
  end

  test "presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end


  test "associations" do
    assert_equal 1, @madonna.albums.size
    assert_equal 2, @album.players.size
  end
end
