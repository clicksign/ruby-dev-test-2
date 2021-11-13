require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
 
  def setup
    @album_player = AlbumPlayer.new(album: albums(:in_da_club), player: players(:fifty_cent))
  end

  context 'associations' do
    should belong_to(:player).class_name('Player')
  end

  context 'associations' do
    should belong_to(:album).class_name('Album')
  end


  test "presence of player" do
    @album_player.player = nil 
    assert_not @album_player.valid?
    assert_not_empty @album_player.errors[:player]
  end

  test "presence of album" do
    @album_player.album = nil 
    assert_not @album_player.valid?
    assert_not_empty @album_player.errors[:album]
  end


end
