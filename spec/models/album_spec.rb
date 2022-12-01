
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:player_albums) }
    it { is_expected.to have_many(:players).through(:player_albums) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
