require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:participations)}
    it { is_expected.to have_many(:albums)}
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }

    it 'Name cant be blank' do
      expect{ FactoryBot.create(:player, name: '') }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end