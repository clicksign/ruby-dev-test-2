require 'test_helper'

class AlbumPlayerTest < ActiveSupport::TestCase
  context "validations" do
    should validate_uniqueness_of(:player_id).scoped_to(:album_id).case_insensitive
    should validate_uniqueness_of(:album_id).scoped_to(:player_id).case_insensitive
  end
end
