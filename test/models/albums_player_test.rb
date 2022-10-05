require 'test_helper'
class AlbumsPlayersTest < ActiveSupport::TestCase
  def setup
    AlbumsPlayers.create(player: Player.first, album: Album.first)
    AlbumsPlayers.create(player: Player.last, album: Album.first)
  end

  test "could relation" do
   assert_equal Album.first.players.count, 2
  end
end