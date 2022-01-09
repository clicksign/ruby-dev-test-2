require 'rails_helper'

RSpec.describe Album, type: :model do
    describe 'Album model' do 
        it { should validate_presence_of(:name) }
        it { should have_many(:partnerships) }
    end
    # happy path
    it "should be possible to create album" do
        new_album = FactoryBot.create(:album)
        expect(new_album.save).to be_truthy
    end
    # sad path
    it "should not be possible to create album without data" do
        new_album = Album.new()
        expect(new_album.save).to_not be_truthy
    end
end 