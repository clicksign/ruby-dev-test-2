require 'rails_helper'

RSpec.describe Player, type: :model do
  subject(:player) { FactoryBot.create(:player) }

  describe 'When associations are valid' do
    it { is_expected.to have_many(:participations)}
    it { is_expected.to have_many(:albums)}
  end

  describe 'When validations are present in model' do
    it { should validate_presence_of(:name) }

    it 'Name cant be blank' do
      expect{ FactoryBot.create(:player, name: '') }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe 'When player has participations in different albums' do
    let(:first_album) { FactoryBot.create(:album) }
    let(:second_album) { FactoryBot.create(:album) }

    before do
      subject.participations.create!(album: first_album)
      subject.participations.create!(album: second_album)
    end

    it 'should have two albums to the player' do
      expect(subject.albums.count).to eq 2
    end
  end
end
