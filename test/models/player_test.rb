# frozen_string_literal: true

require 'test_helper'

class PlayerTest < TestHelper
  test 'valid player' do
    player = Player.new(name: 'Madonna')
    assert player.valid?
  end

  test 'presence of name' do
    player = Player.new
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end
end
