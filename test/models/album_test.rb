require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  test "valid album" do
    album = Album.new(name: 'Renaissance', players: [players(:beyonce)])
    
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new(players: [players(:shakira)])
    
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test 'has many players' do
    album = Album.new(name: 'Beautiful Liar', players: [players(:beyonce), players(:shakira)])
    
    assert album.valid?
    assert album.save
    assert_equal 2, album.players.count
  end
end
