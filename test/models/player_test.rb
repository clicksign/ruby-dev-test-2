require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  context 'associations' do
    should have_many(:player_albums)
    should have_many(:albums).through(:player_albums)
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_length_of(:name).is_at_most(255)
    should validate_uniqueness_of(:name).case_insensitive
  end

  test 'should creates player' do
    player = Player.create(name: 'the album')
    assert player.persisted?
  end

  test 'should updates player' do
    player = players(:beyonce)
    player.update(name: 'Beyonce Updated')
    assert_equal player.reload.name, 'Beyonce Updated'
  end

  test 'should not destroys player with associations' do
    player = players(:beyonce)
    assert_not player.destroy
    assert player.errors.any?
  end

  test 'should destroys player without associations' do
    player = players(:unlinked)
    assert player.destroy
  end

  test 'should links player with album' do
    player = players(:unlinked)

    assert_changes -> { player.albums.count }, from: 0, to: 2 do
      player.albums << albums(:fixation)
      player.albums << albums(:wolf)
    end
  end
end
