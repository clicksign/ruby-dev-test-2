require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:album) { create(:album) }
  let(:album_1) { create(:album) }

  describe 'associations' do
    it { should have_and_belong_to_many :albums }
  end

  describe 'validations' do
    it { should validate_presence_of :name }

    it 'is valid player' do
      player = Player.new(name: 'Madonna')

      expect(player.valid?).to be_truthy
    end

    it 'is not valid album' do
      player = Player.new

      expect(player.valid?).to be_falsey
      expect(player.errors[:name]).to include('can\'t be blank')
    end
  end

  describe 'relationships' do
    it 'create player with N albums' do
      player = Player.create(name: 'Shakira', albums: [album, album_1])

      expect(player.albums.count).to be(2)
    end
  end
end
