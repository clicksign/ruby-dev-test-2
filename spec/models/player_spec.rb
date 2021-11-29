require 'rails_helper'

RSpec.describe Player, type: :model do
  
  context 'Validations' do
    it 'is valid with name' do
      player = create(:player)
      expect(player).to be_valid
    end

    it { should validate_presence_of(:name) }
  end

  context 'Associations' do
    it { should have_many(:albums).through(:player_albums) }
  end

end
