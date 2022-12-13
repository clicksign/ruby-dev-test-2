require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  context 'validations' do
    should validate_presence_of(:name)
  end

  context 'associations' do
    should have_many(:partner_artists)
    should have_many(:players).through(:partner_artists)
  end


  test 'album cannot appear more than once in the same player' do
    album = Album.new(name: Faker::Name.name)

    album.players << players(:two)
    album.players << players(:two)

    assert_raise(ActiveRecord::RecordInvalid) { album.save! }
  end

  test 'album may have several different players' do
    album = Album.new(name: Faker::Name.name)

    album.players << players(:one)
    album.players << players(:two)

    assert album.save!
  end

  test "album will be invalid if it doesn't have at least one artist" do
    album = Album.new(name: Faker::Name.name)

    refute album.valid?
  end

  test "album will be valid if it has at least one artist" do
    album = Album.new(name: Faker::Name.name)
    album.players << players(:one)

    assert album.valid?
  end

  test "album will be invalid if it doesn't have a name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end
end
