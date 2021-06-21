require 'rails_helper'

RSpec.describe Album, :type => :model do
  it "is valid with valid attributes" do
    player = Player.new(name: "Madonna")
    album = Album.new(name: "STARS", players: [player])
    expect(album).to be_valid
  end
  
  it "is not valid without a name" do
    album = Album.new(name: nil)
    expect(album).to_not be_valid
  end

  it "is not valid without a player" do
    album = Album.new(player_ids: nil)
    expect(album).to_not be_valid
  end

  it "is valid with more than one player" do
    player1 = Player.new(name: "Madonna")
    player2 = Player.new(name: "Shakira")
    album = Album.new(name: "STARS", players: [player1, player2])
    expect(album).to be_valid
  end  

end