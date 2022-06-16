require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:album_players) }
    it { is_expected.to have_many(:players).through(:album_players) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
