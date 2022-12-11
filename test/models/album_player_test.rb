require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:album)
    should belong_to(:player)
  end
end
