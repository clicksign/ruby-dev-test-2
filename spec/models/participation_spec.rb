require 'rails_helper'

RSpec.describe Participation, type: :model do
  describe 'When associations are valid' do
    it { is_expected.to belong_to(:player)}
    it { is_expected.to belong_to(:album)}
  end
end