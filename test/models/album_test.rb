require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro', player: players(:shakira))
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new(name: "The new one")

    ["Shakira", "Madonna"].each do |player|
      album.players.build(name: player)
    end

    assert album.valid?
    assert album.players.count == 2
  end

  test "deletes album but not player" do
    album = Album.new(name: "The new one")

    ["Shakira", "Madonna"].each do |player|
      album.players.build(name: player)
    end

    album.save
    album.destroy
    assert Player.find_by(name: "Shakira").present? == true
  end
end
