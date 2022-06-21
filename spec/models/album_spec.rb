require 'rails_helper'

describe Album, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }

    it 'should be a valid album' do
      album = Album.new(name: 'Album 1')
      expect(album.valid?).to be_truthy
    end

    it 'should be a invalid albun' do
      album = Album.new
      expect(album.valid?).to be_falsey
      expect(album.errors[:name]).to include('can\'t be blank')
    end
  end

  describe 'relationships' do
    it { should have_and_belong_to_many :players }
  end

  describe 'players' do
    it 'should return the players in the album' do
      album = Album.create(name: 'Album 1')
      player1 = Player.create(name: 'Player 1')
      player2 = Player.create(name: 'Player 2')
      album.players << player1
      album.players << player2
      expect(album.players).to eq([player1, player2])
    end

    it 'should return the existing players in the album' do
      album = Album.create(name: 'Album 1')
      player1 = Player.create(name: 'Player 1')
      player2 = Player.create(name: 'Player 2')
      album.players << player1
      album.players << player2
      expect(album.players).to eq([player1, player2])

      player2.destroy!
      album.reload
      expect(album.players).to eq([player1])
    end
  end
end
