require 'rails_helper'

RSpec.describe Album, type: :model do
  fixtures :albums
  fixtures :players

  context 'associations' do
    it { should have_and_belong_to_many(:players) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it 'valid album' do
      album = albums(:she_wolf)

      expect(album.valid?).to eq(true)
    end

    it 'presence of name' do
      album = albums(:missing_name)

      expect(album.valid?).to eq(false)
      expect(album.errors.messages[:name]).to eq(["can't be blank"])
    end

    it 'uniqueness name' do
      album = Album.new(name: albums(:fixation).name, players: [players(:shakira)])
    
      expect(album.valid?).to eq(false)
      expect(album.errors.full_messages).to eq(['Name has already been taken'])
    end

    it 'presence of one or more players' do
      album = albums(:missing_players)
  
      expect(album.valid?).to eq(false)
      expect(album.errors.messages[:players]).to eq(["can't be blank"])
    end
  end
end
