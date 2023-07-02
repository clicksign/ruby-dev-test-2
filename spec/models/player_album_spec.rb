require 'rails_helper'

RSpec.describe PlayerAlbum do
  subject(:player_album) { create(:player_album) }

  it { is_expected.to belong_to(:player) }
  it { is_expected.to belong_to(:album) }

  context 'when create' do
    it 'change model' do
      expect do
        create(:player_album)
      end.to change(described_class, :count).by_at_least(1)
    end
  end
end
