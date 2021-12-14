require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'Album' do
    it { should validate_presence_of(:name) }
    it { should have_many(:album_players) }
  end
end
