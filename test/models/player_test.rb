require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "valid player" do
    player = build(:valid_player)
    assert player.valid?
  end

  test "presence of name" do
    player = build(:player_without_name)
    assert_not player.valid?
    assert_not_empty player.errors[:name]
  end

  test "recover correct albums" do
    player1 = create(:valid_player)
    player2 = create(:valid_player)

    album = create(:valid_album, players: [player1, player2])

    player1_saved = Player.find(player1.id)
    player2_saved = Player.find(player2.id)

    assert_includes(player1_saved.albums, album)
    assert_includes(player2_saved.albums, album)
  end
end
