require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = albums(:fijacion)
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "albums can belong to multiple players" do
    shakira = players(:shakira)
    madonna = players(:madonna)
    album = albums(:ray_of_light)

    assert_equal 2, album.players.size
    assert_includes album.players, shakira
    assert_includes album.players, madonna
  end

  test "players can have multiple albums" do
    shakira = players(:shakira)
    ray_of_light = albums(:ray_of_light)
    fixation = albums(:fixation)

    assert_operator shakira.albums.size, :>=, 2
    assert_includes shakira.albums, ray_of_light
    assert_includes shakira.albums, fixation
  end
end
