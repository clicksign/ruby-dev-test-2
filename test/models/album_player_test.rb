require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "album has many players" do
    album = Album.new(name: 'Reflections of a decadent life')
    player_shakira = Player.new(name: player(:shakira))
    player_beyonce = Player.new(name: player(:beyonce))
    AlbumPlayer.new(album.id, player_shakira.id)
    AlbumPlayer.new(album.id, player_beyonce.id)
    assert !album.players.empty?
  end
end
