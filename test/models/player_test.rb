require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = Player.new(name: 'Madonna')

    assert player.valid?
  end

  context 'associations' do
    should have_and_belong_to_many(:albums)
  end

  context 'validations' do
    should validate_presence_of(:name)
  end
end
