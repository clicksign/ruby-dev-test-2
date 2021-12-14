require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'Player' do
    it { should validate_presence_of(:name) }
    it { should have_many(:album_players) }
  end
end
