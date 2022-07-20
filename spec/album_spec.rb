require 'rails_helper'

describe Album, type: :model do
  context 'when creates Album' do
    it 'should be generate a valida player' do
      album = Album.new(name: 'test away')
      album.save!
      expect(album.valid?).to be_truthy
    end
  end

  context 'when album has players' do
    let!(:album) { Album.new(name: 'test away') }
    let!(:first_player) { Player.new(name: 'kanye') }
    let!(:second_player) { Player.new(name: 'frank') }

    it 'return albums from player' do
      album.players << first_player
      album.players << second_player

      expect(album.players).to eq([first_player, second_player])
    end
  end
end
