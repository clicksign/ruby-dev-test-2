require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test 'valid album' do
    album = Album.new(
      name: 'Peligro',
      players: [players(:shakira), players(:beyonce)]
    )
    assert album.valid?
  end

  test 'presence of name' do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test 'presence of players' do
    album = Album.new(name: 'Album')
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end

  test 'should have and belongs to many players' do
    released = albums(:released)
    shakira = players(:shakira)
    beyonce = players(:beyonce)

    assert_includes released.players, shakira
    assert_includes released.players, beyonce

    assert_includes shakira.albums, released
    assert_includes beyonce.albums, released
  end
end
