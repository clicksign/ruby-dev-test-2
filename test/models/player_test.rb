# frozen_string_literal: true

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test 'valid player' do
    player = players(:shakira)

    assert player.valid?
  end

  test 'presence of name' do
    player = players(:missing_name)

    assert_not player.valid?
    assert_includes player.errors.full_messages, "Name can't be blank"
  end

  test 'uniqueness name' do
    player = Player.new(name: players(:shakira).name)

    assert_not player.valid?
    assert_includes player.errors.full_messages, 'Name has already been taken'
  end

  test 'player shakira have three albums' do
    player = players(:shakira)

    assert_equal player.albums.size, 3
  end
end
