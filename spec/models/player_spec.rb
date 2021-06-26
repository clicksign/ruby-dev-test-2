require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'Player class' do
    it { should validate_presence_of(:name) }
    it { should have_and_belong_to_many(:albums) }
  end
end