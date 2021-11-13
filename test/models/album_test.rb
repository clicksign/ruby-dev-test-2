require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
 
  def setup
    @album = Album.new(name: albums(:in_da_club))
  end

  context 'associations' do
    should have_many(:players).through(:album_players)
  end

  test "valid album" do
    assert @album.valid?
  end

  test "presence of name" do
    @album.name = nil
    assert_not @album.valid?
    assert_not_nil @album.errors[:name]
  end

  test 'invalid without name' do
    @album.name = nil
    refute @album.valid?, 'saved album without a name'
    assert_not_nil @album.errors[:name], 'no validation error for name present'
  end

  test "should not save album without name" do
    @album.name = nil
    assert_not @album.save, "Saved the album without a name"
  end

end
