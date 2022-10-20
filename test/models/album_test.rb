require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: 'Peligro')

    assert album.valid?
  end

  context 'associations' do
    should have_and_belong_to_many(:players)
  end

  context 'validations' do
    should validate_presence_of(:name)
  end
end
