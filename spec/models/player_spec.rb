require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'test from earlier implementation' do
    fixtures :albums, :players
    it "validates player" do
      player = Player.new(name: 'Madonna')
      expect(player).to be_valid
    end
    it "refuses player without name" do
      player = Player.new
      expect(player).not_to be_valid
      expect(player.errors[:name]).not_to be_empty
    end
  end
end
