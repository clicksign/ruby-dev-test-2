require "rails_helper"

RSpec.describe Player, type: :model do
    describe 'Player model' do 
        it { should validate_presence_of(:name) }
        it { should have_many(:partnerships) }
    end
    # happy path
    it "should be possible to create player" do
        new_player = FactoryBot.create(:player)
        expect(new_player.save).to be_truthy
    end
    # sad path
    it "should not be possible to create player without data" do
        new_player = Player.new()
        expect(new_player.save).to_not be_truthy
    end
end 