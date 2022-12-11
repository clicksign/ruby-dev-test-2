require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:name)
  end

  context "associations" do
    should have_many(:players).through(:album_players)
    should have_many(:album_players)
  end

  test "valid album" do
    album = Album.new(name: 'Peligro', players: [players(:shakira)])
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "presence of player" do
    album = Album.new(name: 'Peligro')
    album.players << players(:shakira, :beyonce)
    assert album.valid?
  end
end
