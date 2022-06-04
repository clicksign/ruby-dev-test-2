require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  def setup
    @player = Player.new(name: "Madonna")
  end

  test "valid player" do
    assert @player.valid?
  end

  test "without presence name" do
    @player.name = nil
    assert_not @player.valid?
    assert_not_empty @player.errors[:name]
  end
end
