require "test_helper"

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = Album.new(name: "Peligro")
  end

  test "valid album" do
    @album.players << players(:shakira)
    assert @album.valid?
  end

  test "without presence name" do
    @album.name = nil
    assert_not @album.valid?
    assert_not_empty @album.errors[:name]
  end
end
