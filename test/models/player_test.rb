require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = Player.new(name: 'Rihanna')
    
    assert player.valid?
  end

  test "presence of name" do
    player = Player.new
    
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test 'has many albums' do
    player = Player.new(name: 'SZA')

    player.albums << albums(:ctrl)
    player.albums << albums(:sos)

    assert player.valid?
    assert player.save
    assert_equal 2, player.albums.count
  end
end

