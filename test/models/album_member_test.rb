require 'test_helper'

class AlbumMemberTest < ActiveSupport::TestCase
  test 'valid album' do
    member = AlbumMember.new(album: albums(:fixation), player: players(:shakira))
    assert member.valid?
  end

  test 'presence of album' do
    member = AlbumMember.new(player: players(:shakira))
    assert_not member.valid?
    assert_not_empty member.errors[:album]
  end

  test 'presence of player' do
    member = AlbumMember.new(album: albums(:fixation))
    assert_not member.valid?
    assert_not_empty member.errors[:player]
  end
end
