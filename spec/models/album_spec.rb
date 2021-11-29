require 'rails_helper'

RSpec.describe Album, type: :model do

  context 'Validations' do
    it { should validate_presence_of(:name) }

    it 'is valid with name and player' do
      album = build(:album_with_players, players_count: 1)
      album.valid?
      expect(album).to be_valid
    end

    it 'is valid with name and more players' do
      album = build(:album_with_players, players_count: 1)
      album.valid?
      expect(album).to be_valid
    end

    it 'is invalid without player' do
      album = build(:album)
      album.valid?
      expect(album.errors[:players]).to include("can't be blank")
    end

  end

  context 'Associations' do
    it { should have_many(:players).through(:player_albums) }
  end

  
end
