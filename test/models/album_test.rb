require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test 'valid album' do
    album = Album.new(name: 'Peligro', players: [players(:shakira)])
    assert album.valid?
  end

  test 'presence of name' do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test 'album must have at least one player' do
    album = Album.new(name: 'Peligro')

    assert_not album.valid?
    assert_not_empty album.errors.details[:players], { error: :blank }
  end

  test 'can have N of players' do
    album = albums(:fijacion)
    album.players = [players(:shakira), players(:beyonce)]

    assert album.valid?
    assert_not_empty album.players
    assert_equal album.players.count, 2
  end
end
