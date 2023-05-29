# frozen_string_literal: true

require 'test_helper'

class AlbumTest < TestHelper
  test 'valid album' do
    album = Album.new(name: 'Fijacion', players: [players(:shakira)])
    assert album.valid?
  end

  test 'presence of name' do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test 'presence of player' do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:players]
  end
end
