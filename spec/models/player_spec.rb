require 'rails_helper'

RSpec.describe Player, :type => :model do
  it "is not valid without a name" do
    player = Player.new(name: nil)
    expect(player).to_not be_valid
  end
  
end