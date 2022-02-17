require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:record_companies) }
    it { should have_many(:players).through(:record_companies) }
  end
end
