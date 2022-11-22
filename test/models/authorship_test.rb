require 'test_helper'

class AuthorshipTest < ActiveSupport::TestCase
  test "valid authorship" do
    authorship = Authorship.new(album: albums(:fixation), player: players(:shakira))
    assert authorship.valid?
  end

  test "presence of album" do
    authorship = Authorship.new
    assert_not authorship.valid?
    assert_not_empty authorship.errors[:album]
  end

  test "presence of player" do
    authorship = Authorship.new
    assert_not authorship.valid?
    assert_not_empty authorship.errors[:player]
  end
end
