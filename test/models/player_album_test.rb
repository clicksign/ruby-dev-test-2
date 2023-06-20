require 'test_helper'

class PlayerAlbumTest < ActiveSupport::TestCase
  test "valid player album" do
    player_album = PlayerAlbum.new(player: Player.first, album: Album.first)

    assert player_album.save
  end

  test "presence of album" do
    player_album = PlayerAlbum.new(player: Player.first)

    assert_not player_album.valid?
    assert_not_empty player_album.errors[:album]
  end

  test "presence of player" do
    player_album = PlayerAlbum.new(album: Album.first)

    assert_not player_album.valid?
    assert_not_empty player_album.errors[:player]
  end
end
