require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new
    assert_not album.valid?
  end

  test 'album should not have the same player associated' do
    player1 = Player.new(name: "Player1")
    player2 = Player.new(name: "Player2")
    album = Album.new(name: "Album")

    album.players << player1
    album.players << player2
    album.players << player1 # Tentativa de adicionar o mesmo player novamente
    assert_raise(ActiveRecord::RecordInvalid) { album.save! }
  end
end
