# frozen_string_literal: true

require 'test_helper'

class AlbumPlayerTest < TestHelper
  test 'valid album_player' do
    album_player = AlbumPlayer.new(album: albums(:she_wolf), player: players(:shakira))
    assert album_player.valid?
  end

  test 'presence of album' do
    album_player = AlbumPlayer.new
    assert_not album_player.valid?
    assert_not_empty album_player.errors[:album]
  end

  test 'presence of player' do
    album_player = AlbumPlayer.new
    assert_not album_player.valid?
    assert_not_empty album_player.errors[:player]
  end

  test 'uniqueness of player' do
    duplicated_album_player = AlbumPlayer.new(album: albums(:peligro), player: players(:shakira))
    assert_not duplicated_album_player.valid?
    assert_not_empty duplicated_album_player.errors[:player]
  end

  test 'presence of more than one player' do
    album = Album.create(name: 'Celebration Tour', players: [players(:shakira)])

    album_player = AlbumPlayer.create(album: album, player: players(:madonna))

    assert album_player.valid?
    album.reload
    assert album.players.include?(players(:shakira))
    assert album.players.include?(players(:madonna))
  end
end
