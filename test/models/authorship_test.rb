require 'test_helper'

class AuthorshipTest < ActiveSupport::TestCase
  test "presence of player" do
    authorship = Authorship.new
    assert_not authorship.valid?
    assert_not_empty authorship.errors[:player]
  end

  test "presence of album" do
    authorship = Authorship.new
    assert_not authorship.valid?
    assert_not_empty authorship.errors[:album]
  end
end
