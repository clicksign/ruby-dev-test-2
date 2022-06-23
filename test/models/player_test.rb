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

  test 'can have N of albums' do
    player = players(:shakira)
    player.albums = [albums(:fijacion), albums(:fixation), albums(:fixation2)]

    assert player.valid?
    assert_not_empty player.reload.albums
    assert_equal player.reload.albums.count, 3
  end
end
