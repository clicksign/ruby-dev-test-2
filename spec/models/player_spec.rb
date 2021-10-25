require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:player) { create(:player) }

  it { expect(player).to be_valid }

  context 'when name blank' do
    it { expect(build(:player, name: nil)).to_not be_valid }
  end
end
