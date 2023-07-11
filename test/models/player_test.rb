require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test 'valid player' do
    player = Player.new(name: 'Madonna')

    assert player.valid?
  end

  test 'presence of name' do
    player = Player.new

    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test 'has_many albums' do
    player = Player.new(name: 'Shakira', albums: [albums(:fixation)])
    player.save

    assert player.valid?
    assert_equal 1, player.albums.count
    assert_respond_to player, :albums
  end
end
