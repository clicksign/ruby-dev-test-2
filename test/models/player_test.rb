require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  
  def setup
    @player = Player.new(name: 'Madonna')
  end

  context 'associations' do
    should have_many(:albums).through(:album_players)
  end

  test "valid player" do
    assert @player.valid?
  end

  test "presence of name" do
    @player.name = nil
    assert_not @player.valid?
    assert_not_empty @player.errors[:name]
  end

  test 'invalid without name' do
    @player.name = nil
    refute @player.valid?, 'saved player without a name'
    assert_not_nil @player.errors[:name], 'no validation error for name present'
  end

  test "should not save player without name" do
    @player.name = nil
    assert_not @player.save, "Saved the player without a name"
  end


end
