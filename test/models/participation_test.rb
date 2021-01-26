require 'test_helper'

class ParticipationTest < ActiveSupport::TestCase
  test "valid participation" do
    participation = Participation.new(album:  albums(:she_wolf), player: players(:shakira))
    assert participation.valid?
  end

  test "presence of album" do
    participation = Participation.new
    assert_not participation.valid?
    assert_not_empty participation.errors[:album]
  end

  test "presence of player" do
    participation = Participation.new
    assert_not participation.valid?
    assert_not_empty participation.errors[:player]
  end
end
