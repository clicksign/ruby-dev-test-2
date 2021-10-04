require 'rails_helper'

RSpec.describe Account, type: :model do


  # subject { described_class.new(player_id: nil) }

  subject { described_class }

  it "belongs_to player" do
    assc = subject.reflect_on_association(:player)
    expect(assc.macro).to eq :belongs_to
  end

  it "belongs_to album" do
    assc = subject.reflect_on_association(:album)
    expect(assc.macro).to eq :belongs_to
  end
  
end


