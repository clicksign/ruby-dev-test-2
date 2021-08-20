require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'test from earlier implementation' do
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
  context "when in n to n association" do
    let(:shakira) { Player.create(name: 'Shakira')}
    let!(:fijaction) { Album.create(name: 'Fijación Oral, Vol. 1', players: [shakira])}
    let!(:fixation) { Album.create(name: 'Oral Fixation, Vol. 2', players: [shakira])}
    it "can have multiple albums" do
      expect(shakira).to be_valid
      expect(shakira.albums.size).to eq(2)
    end
  end
end
