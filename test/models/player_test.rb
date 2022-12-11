require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:name)
  end

  context "associations" do
    should have_many(:albums).through(:album_players)
    should have_many(:album_players)
  end
  
  test "valid player" do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test "when presence of name" do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test "presence of albums" do
    player = Player.new(name: 'Madonna')
    player.albums << albums(:fijacion, :fixation)
    assert player.valid?
  end
end
