require 'rails_helper'

RSpec.describe Player, :type => :model do
  describe 'associations' do
    it "should have many albums" do
      player_assoc = Player.reflect_on_association(:albums)
      expect(player_assoc.macro).to eq(:has_and_belongs_to_many)
    end
  end

  it "is not valid without a name" do
    player = Player.new(name: nil)
    expect(player).to_not be_valid
  end
  
end