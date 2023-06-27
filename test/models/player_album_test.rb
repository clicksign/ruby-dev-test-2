require 'test_helper'

class PlayerAlbumTest < ActiveSupport::TestCase
  test "valid album" do
    player = Player.new(name: "Roberto Carlos")
    album  = Album.new(name: "Em Rítimo de Aventura")

    player_album = PlayerAlbum.new(player: player, album: album)

    assert player_album.valid?
  end

  test "presence of player" do
    album  = Album.new(name: "Em Rítimo de Aventura")

    player_album = PlayerAlbum.new(player: nil, album: album)
    assert_not player_album.valid?
    assert_not_empty player_album.errors[:player]
  end

  test "presence of album" do
    player = Player.new(name: "Roberto Carlos")

    player_album = PlayerAlbum.new(player: player, album: nil)
    assert_not player_album.valid?
    assert_not_empty player_album.errors[:album]
  end

  test "uniqueness scoped by album" do
    player = Player.new(name: "Roberto Carlos")
    album  = Album.new(name: "Em Rítimo de Aventura")
    PlayerAlbum.create(player: player, album: album)

    player_album_dup = PlayerAlbum.new(player: player, album: album)

    assert_not player_album_dup.valid?

    assert_not_empty player_album_dup.errors[:album_id]
    assert_not_empty player_album_dup.errors[:player_id]
  end
end
