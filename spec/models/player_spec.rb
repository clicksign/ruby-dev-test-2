require 'rails_helper'

describe Player, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }

    it 'should be a valid player' do
      player = Player.new(name: 'Player 1')
      expect(player.valid?).to be_truthy
    end

    it 'should be a invalid player' do
      player = Player.new
      expect(player.valid?).to be_falsey
      expect(player.errors[:name]).to include('can\'t be blank')
    end
  end

  describe 'relationships' do
    it { should have_and_belong_to_many :albums }
  end

  describe 'albums' do
    it 'should return the albums in the player' do
      player = Player.create(name: 'Player 1')
      album1 = Album.create(name: 'Album 1')
      album2 = Album.create(name: 'Album 2')
      player.albums << album1
      player.albums << album2
      expect(player.albums).to eq([album1, album2])
    end

    it 'should return the existing albums in the player' do
      player = Player.create(name: 'Player 1')
      album1 = Album.create(name: 'Album 1')
      album2 = Album.create(name: 'Album 2')
      player.albums << album1
      player.albums << album2
      expect(player.albums).to eq([album1, album2])

      album2.destroy!
      player.reload
      expect(player.albums).to eq([album1])
    end
  end
end
