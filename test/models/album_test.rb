require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = albums(:the_best)
  end

  test "valid album" do
    assert @album.valid?
    assert_not_empty @album.players
  end

  test "associations" do
    assert_equal 2, @album.players.count
    assert_equal "Madonna", @album.players.order(name: :asc).first.name
  end
end
