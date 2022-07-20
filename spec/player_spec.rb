require 'rails_helper'

describe Player, type: :model do
  context 'when creates player' do
    it 'should be generate a valida player' do
      player = Player.new(name: 'kanye west')
      player.save!
      expect(player.valid?).to be_truthy
    end
  end

  context 'when player has albums' do
    let!(:player) { Player.new(name: 'kanye west') }
    let!(:first_album) { Album.new(name: 'kanye 1') }
    let!(:second_album) { Album.new(name: 'kanye 2') }

    it 'return albums from player' do
      player.albums << first_album
      player.albums << second_album

      expect(player.albums).to eq([first_album, second_album])
    end
  end
end
