require 'rails_helper'

describe Album, type: :model do
  let(:player) { create(:player) }
  let(:player_1) { create(:player) }

  describe 'associations' do
    it { should have_and_belong_to_many :players }
  end

  describe 'validations' do
    it { should validate_presence_of :name }

    it 'is valid album' do
      album = Album.new(name: 'Some Girls To Me')

      expect(album.valid?).to be_truthy
    end

    it 'is not valid album' do
      album = Album.new

      expect(album.valid?).to be_falsey
      expect(album.errors[:name]).to include('can\'t be blank')
    end
  end

  describe 'relationships' do
    it 'create album with N players' do
      album = Album.create(name: 'Some Girls To Me', players: [player, player_1])

      expect(album.players.count).to be(2)
    end
  end
end