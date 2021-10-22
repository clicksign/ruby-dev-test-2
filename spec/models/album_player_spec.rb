require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
  describe 'AlbumPlayer class' do
    it { should belong_to(:album) }
    it { should belong_to(:player)}
  end
end
