require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'Album class' do
    it { should validate_presence_of(:name) }
    it { should have_and_belong_to_many(:players) }
  end
end