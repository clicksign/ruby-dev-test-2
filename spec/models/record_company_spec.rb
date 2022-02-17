require 'rails_helper'

RSpec.describe RecordCompany, type: :model do
  describe 'associations' do
    it { should belong_to(:album) }
    it { should belong_to(:player) }
  end
end
