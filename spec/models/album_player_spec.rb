require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
    describe 'AlbumPlayer Model' do 
        it { should belong_to(:player) }
        it { should belong_to(:album) }

        it "should not create duplicate entries" do
            album = FactoryBot.create(:album)
            player = FactoryBot.create(:player)
            partnership = AlbumPlayer.create!(album: album, player: player)
            repeated_partnership = AlbumPlayer.new(album: album, player: player)
            expect(repeated_partnership.save).to_not be_truthy
        end
    end
end