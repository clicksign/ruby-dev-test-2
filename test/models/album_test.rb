require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "has many players" do
    album = Album.new(name: 'Afrociberdelia')
    album.save!
    album.players.create(name: 'Chico Science')
    album.players.create(name: 'Paralamas do Sucesso')

    assert_equal 2, album.players.count
  end
end
