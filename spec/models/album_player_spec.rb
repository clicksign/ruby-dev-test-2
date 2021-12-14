require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
  describe 'AlbumPlayer' do
    it { should belong_to(:player) }
    it { should belong_to(:album) }
  end
end
