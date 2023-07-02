require 'rails_helper'

RSpec.describe Album do
  subject(:album) { create(:album) }

  it { is_expected.to have_many(:players) }

  context 'when validate' do
    it { is_expected.to validate_presence_of(:name) }
  end

  context 'when create' do
    it 'change model' do
      expect do
        create(:album)
      end.to change(described_class, :count).by_at_least(1)
    end
  end
end
