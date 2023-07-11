require "test_helper"

class AlbumPlayerTest < ActiveSupport::TestCase
  test 'valid album player' do
    album_player = AlbumPlayer.new(album: albums(:other_album), player: players(:shakira))

    assert album_player.valid?
  end

  test 'presence of album' do
    album_player = AlbumPlayer.new(album: nil, player: players(:shakira))

    assert_not album_player.valid?
    assert_not album_player.persisted?
    assert_not_empty album_player.errors[:album]
  end

  test 'presence of player' do
    album_player = AlbumPlayer.new(album: albums(:other_album), player: nil)

    assert_not album_player.valid?
    assert_not album_player.persisted?
    assert_not_empty album_player.errors[:player]
  end
end
