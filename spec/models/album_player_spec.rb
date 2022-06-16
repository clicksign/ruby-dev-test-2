require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:album).required }
    it { is_expected.to belong_to(:player).required }
  end
end
