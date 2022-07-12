require 'rails_helper'

RSpec.describe(Album, type: :model) do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_and_belong_to_many(:players) }
  end

  describe '#create' do
    it 'without player' do
      album = create(:album)

      expect(album.players).to be_empty
    end

    it 'with player' do
      album = create(:album, :with_player)

      expect(album.players).to be_present
    end

    it 'with two players' do
      album = create(:album)
      player1 = create(:player)
      player2 = create(:player)
      album.players << player1
      album.players << player2
      album.save!

      expect(album.players).to eq([player1, player2])
    end
  end

  describe '#update' do
    it 'remove one album' do
      album = create(:album)
      player1 = create(:player)
      player2 = create(:player)
      album.players << player1
      album.players << player2
      album.save!

      player2.destroy!

      expect(album.reload.players).to eq([player1])
    end
  end
end
