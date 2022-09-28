require 'rails_helper'

RSpec.describe Player, :type => :model do
  it "is a Player with valid attributes" do
    expect(Player.new(name:"John Coltrane")).to be_valid
  end

  it "is a Player without name" do
    expect(Player.new()).to be_invalid
  end
end