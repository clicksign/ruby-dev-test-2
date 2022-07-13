require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = build(:valid_album)
    assert album.valid?
  end

  test "presence of name" do
    album = build(:album_without_name)
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of at least one player" do
    album = build(:album_without_players)
    album.save
    assert_not_empty album.errors[:players]
  end

  test "presence of repeated players" do
    player = create(:valid_player)
    album = build(:album_without_players, players: [player, player])
    album.save
    assert_not_empty album.errors[:players]
  end

  test "saving players relations" do
    players = [create(:valid_player), create(:valid_player)]
    album = create(:valid_album, players: players)

    album_saved = Album.find(album.id)
    assert_equal(players.size, album_saved.players.count)
  end
end
