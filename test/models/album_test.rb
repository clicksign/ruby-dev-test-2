require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  context 'associations' do
    should have_many(:player_albums)
    should have_many(:players).through(:player_albums)
  end

  context 'validations' do
    should validate_presence_of(:name)
    should validate_length_of(:name).is_at_most(255)
  end

  test 'should creates album' do
    album = Album.create(name: 'The album')
    assert album.persisted?
  end

  test 'should updates album' do
    album = albums(:wolf)
    album.update(name: 'Wolf Updated')
    assert_equal album.reload.name, 'Wolf Updated'
  end

  test 'should destroys album with associations' do
    album = albums(:wolf)
    assert album.destroy
  end

  test 'should links album with player' do
    album = albums(:unlinked)

    assert_changes -> { album.players.count }, from: 0, to: 2 do
      album.players << players(:beyonce)
      album.players << players(:shakira)
    end
  end
end
