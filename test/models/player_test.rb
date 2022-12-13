require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  context 'validations' do
    should validate_presence_of(:name)
  end

  context 'associations' do
    should have_many(:partner_artists)
    should have_many(:albums).through(:partner_artists)
  end

  test "artist will be valid if it has at least one album" do
    player = players(:one)
    album = albums(:one)

    assert_includes player.albums, album
    assert player.valid?
  end

  test 'artist cannot appear more than once in the same album' do
    player = Player.new(name: Faker::Name.name)

    player.albums << albums(:two)
    player.albums << albums(:two)

    assert_raise(ActiveRecord::RecordInvalid) { player.save! }
  end

  test 'artist may have several different albums' do
    player = Player.new(name: Faker::Name.name)

    player.albums << albums(:one)
    player.albums << albums(:two)

    assert player.save!
  end

  test "presence of name" do
    player = Player.new
    refute player.valid?
    assert_not_empty player.errors[:name]
  end
end
