require 'rails_helper'

RSpec.describe PlayerAlbum, type: :model do
  before do
    @player = Player.create(name: 'Player 1')
    @album = Album.create(name: 'Album 1')
    @player_album = subject.class.new(player_id: @player.id, album_id: @album.id, name: 'PlayerAlbum')
  end
  context 'invalid params' do
    it 'player_id is nil' do
      @player_album.player_id = nil
      expect(@player_album).to_not be_valid
    end
    it 'album_id is nil' do
      @player_album.album_id = nil
      expect(@player_album).to_not be_valid
    end
    it 'name is nil' do
      @player_album.name = nil
      expect(@player_album).to_not be_valid
    end
    it 'product_id and store_id not unique' do
      PlayerAlbum.create(player_id: @player.id, album_id: @album.id, name: 'PlayerAlbum')
      expect(@player_album).to_not be_valid
    end
  end
  context 'valid PlayerAlbum' do
    it { expect(@player_album).to be_valid }
  end
end
