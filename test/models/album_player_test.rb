require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  test "valid association" do
    player = Player.create(name: "Shakira")
    album = Album.create(name: 'Peligro', players: [player])
    assert player.albums.count == 1

    player.destroy
    assert player.albums.count == 0    
  end
end