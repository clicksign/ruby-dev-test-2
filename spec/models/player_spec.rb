require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'validations' do
    let(:player) { build_stubbed(:player) }
    let(:invalid_player) { build_stubbed(:player, name: nil) }

    it 'is valid with a name' do
      expect(player).to be_valid
    end

    it 'is not valid without a name' do
      expect(invalid_player).to_not be_valid
    end
  end

  describe 'associations' do
    let(:player1) { create(:player) }
    let(:player2) { build_stubbed(:player) }
    let(:album1) { create(:album, players: [player1, player2]) }
    let(:album2) { create(:album, players: [player1]) }

    it 'has many albums' do
      expect(player1.albums).to eq([album1, album2])
    end
  end
end
