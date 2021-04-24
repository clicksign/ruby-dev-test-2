require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:participations)}
    it { is_expected.to have_many(:albums)}
  end

  describe 'validations' do
    it 'should be invalid create a Player without name' do
    end
  end
end