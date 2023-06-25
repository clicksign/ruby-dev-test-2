require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', players: [players(:shakira)])
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of authorships" do
    album = Album.new

    assert_not album.valid?
    assert_includes album.errors.details[:authorships], { error: :blank }
  end
end
