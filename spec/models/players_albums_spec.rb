require 'rails_helper'

RSpec.describe 'Player and Album associations', type: :model do
  let!(:player1) { FactoryBot.create(:player) }
  let!(:player2) { FactoryBot.create(:player) }
  let!(:album1) { FactoryBot.create(:album) }
  let!(:album2) { FactoryBot.create(:album) }
  let!(:album3) { FactoryBot.create(:album) }
  let!(:album4) { FactoryBot.create(:album) }
  let!(:album5) { FactoryBot.create(:album) }

  describe 'associations' do
    it 'associates a player with an album' do
      player1.albums << album1
      byebug
      expect(player1.albums).to include(album1)
    end

    it 'does not associate a player with an album' do
      expect(player1.albums).not_to include(album2)
    end

    it 'associates two albums with the same player' do
      player1.albums << [album3, album4]
      expect(player1.albums).to include(album3, album4)
    end

    it 'associates the same album with two players' do
      player1.albums << album5
      player2.albums << album5
      expect(album5.players).to include(player1, player2)
    end
  end
end
