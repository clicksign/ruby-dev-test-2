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

  test 'has_many of players' do
    album = Album.new(name: 'Halo', players: [players(:beyonce)])
    album.save

    assert album.valid?
    assert_equal 1, album.players.count
    assert_respond_to album, :players
  end
end
