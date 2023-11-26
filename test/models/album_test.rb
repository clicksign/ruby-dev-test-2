# frozen_string_literal: true

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test 'valid album' do
    album = albums(:she_wolf)

    assert album.valid?
  end

  test 'presence of name' do
    album = albums(:missing_name)

    assert_not album.valid?
    assert_includes album.errors.full_messages, "Name can't be blank"
  end

  test 'uniqueness name' do
    album = Album.new(name: albums(:fixation).name, players: [players(:shakira)])

    assert_not album.valid?
    assert_includes album.errors.full_messages, 'Name has already been taken'
  end

  test 'presence of one or more players' do
    album = albums(:missing_players)

    assert_not album.valid?
    assert_includes album.errors.full_messages, "Players can't be blank"
  end
end
