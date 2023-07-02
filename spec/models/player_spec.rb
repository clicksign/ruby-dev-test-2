require 'rails_helper'

RSpec.describe Player do
  subject(:player) { create(:player) }

  it { is_expected.to have_many(:albums) }

  context 'when validate' do
    it { is_expected.to validate_presence_of(:name) }
  end

  context 'when create' do
    it 'change model' do
      expect do
        create(:player)
      end.to change(described_class, :count).by_at_least(1)
    end
  end
end
