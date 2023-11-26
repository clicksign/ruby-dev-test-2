require 'rails_helper'

RSpec.describe Player, type: :model do
  fixtures :players

  context 'associations' do
    it { should have_and_belong_to_many(:albums) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }

    it 'valid player' do
      player = players(:shakira)
  
      expect(player.valid?).to eq(true)
    end

    it 'presence of name' do
      player = players(:missing_name)

      expect(player.valid?).to eq(false)
      expect(player.errors.full_messages).to eq(["Name can't be blank"])
    end

    it 'uniqueness name' do
      player = Player.new(name: players(:shakira).name)

      expect(player.valid?).to eq(false)
      expect(player.errors.full_messages).to eq(['Name has already been taken'])
    end

    it 'player shakira have three albums' do
      player = players(:shakira)

      expect(player.valid?).to eq(true)
      expect(player.albums.size).to eq(3)
    end
  end
end
