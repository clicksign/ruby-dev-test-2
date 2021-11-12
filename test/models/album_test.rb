require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  def setup
    @album = Album.new(name: 'Peligro', player: players(:shakira))
  end
  test "valid album" do
    assert @album.valid?
  end

  test 'invalid without name' do
    @album.name = nil
    refute @album.valid?, 'saved user without a name'
    assert_not_nil @album.errors[:name], 'no validation error for name present'
  end

  test "presence of name" do
    @album.name = nil
    assert_not @album.valid?
    assert_not_nil @album.errors[:name]
  end

  test "presence of player" do
    @album.player = nil 
    assert_not @album.valid?
    assert_not_empty @album.errors[:player]
  end
end
