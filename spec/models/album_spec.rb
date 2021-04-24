require 'rails_helper'

RSpec.describe Album, type: :model do
  subject(:album) { FactoryBot.create(:album) }

  describe 'When associations are valid' do
    it { is_expected.to have_many(:participations)}
    it { is_expected.to have_many(:players)}
  end

  describe 'When validations are present in model' do
    it { should validate_presence_of(:name) }

    it 'Name cant be blank' do
      expect{FactoryBot.create(:album, name: '')}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe 'When two players has participations in the album' do
    let(:main_player) { FactoryBot.create(:player) }
    let(:player) { FactoryBot.create(:player) }

    before do
      subject.participations.create!(player: main_player)
      subject.participations.create!(player: player)
    end

    it 'should have two players in the album' do
      expect(subject.players.count).to eq 2 
    end
  end
end
