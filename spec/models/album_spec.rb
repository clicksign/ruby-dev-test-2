require 'rails_helper'

RSpec.describe Album, type: :model do
  context "tests from earlier implementation" do
    let(:shakira) { Player.new(name: 'Shakira') }
    let(:album) { Album.new }
    it "validates album" do
      album.update(name: 'Peligro')
      album.players << shakira
      expect(album).to be_valid
    end
    it "refuses album without name" do
      expect(album).not_to be_valid
      expect(album.errors[:name]).not_to be_empty
    end
    it "refuses album without player" do
      expect(album).not_to be_valid
      expect(album.errors[:players]).not_to be_empty
    end
  end

  context "when in n to n association" do
    let(:shakira) { Player.new(name: 'Shakira')}
    let(:beyonce) { Player.new(name: 'Beyonce')}
    let(:fixation) { Album.new(name: 'Oral Fixation, Vol. 2')}
    it "can have multiple players" do
      fixation.players << [shakira, beyonce]
      expect(fixation).to be_valid
      expect(fixation.players.size).to eq(2)
    end
  end
end
