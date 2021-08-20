require 'rails_helper'

RSpec.describe Album, type: :model do
  context "tests from earlier implementation" do
    fixtures :albums, :players
    it "validates album" do
      album = Album.new(name: 'Peligro', player: players(:shakira))
      expect(album).to be_valid
    end
    it "refuses album without name" do
      album = Album.new
      expect(album).not_to be_valid
      expect(album.errors[:name]).not_to be_empty
    end

    it "refuses album without player" do
      album = Album.new
      expect(album).not_to be_valid
      expect(album.errors[:player]).not_to be_empty
    end
  end
end
