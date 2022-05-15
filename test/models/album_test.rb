require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = albums(:valid)
    @by_the_way_album = albums(:by_the_way)
    @flea = players(:flea)
    @anthony = players(:anthony)
  end

  test "valid album" do
    album = Album.new(name: 'Peligro')
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "associations" do
    @album.players << @anthony
    @album.players << @flea
    @by_the_way_album.players.create(name: "Shakira")

    assert_equal 2, @album.players.size
    assert_equal "Shakira", @by_the_way_album.players.first.name
  end
end
