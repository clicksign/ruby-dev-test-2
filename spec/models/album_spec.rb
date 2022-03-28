require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'validations' do
    let(:album) { build_stubbed(:album) }
    let(:invalid_album) { build_stubbed(:album, name: nil) }

    it 'is valid with a name' do

      expect(album).to be_valid
    end

    it 'is not valid without a name' do

      expect(invalid_album).to_not be_valid
    end
  end

  describe 'associations' do
    let(:player1) { build_stubbed(:player) }
    let(:player2) { build_stubbed(:player) }
    let(:album1) { build_stubbed(:album, players: [player1, player2]) }
    let(:album2) { build_stubbed(:album, players: [player1]) }

    it 'has many players' do
      expect(album1.players).to eq([player1, player2])
    end
  end
end
