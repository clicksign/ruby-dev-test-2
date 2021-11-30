require 'rails_helper'

RSpec.describe Album, type: :model do
    describe 'Album Model' do 
        it { should validate_presence_of(:name) }
        it { should have_many(:partnerships) }
    end
end