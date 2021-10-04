require 'rails_helper'

RSpec.describe Player, type: :model do

  subject { described_class.new(name: "Otario") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "should have many accounts" do
    player = Player.reflect_on_association(:account)
    expect(player.macro).to eq(:has_many)
  end

end
