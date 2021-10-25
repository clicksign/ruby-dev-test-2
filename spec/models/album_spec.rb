require 'rails_helper'

RSpec.describe Album, type: :model do
  let(:album) { create(:album) }

  it { expect(album).to be_valid }

  context 'when name blank' do
    it { expect(build(:album, name: nil)).to_not be_valid }
  end
end
