require 'rails_helper'
require 'faker'

RSpec.describe AlbumPlayer, type: :model do
    describe 'AlbumPlayer model' do 
        it { should belong_to(:player) }
        it { should belong_to(:album) }
    end
    # happy path
    it "should be possible to create AlbumPlayers" do
        new_album = FactoryBot.create(:album)
        new_player = FactoryBot.create(:player)
        new_partnership = AlbumPlayer.create!(album: new_album, player: new_player)
        expect(new_partnership.save).to be_truthy
    end
    # sad path
    it "should not be possible to create AlbumPlayers without data" do
        new_partnership = AlbumPlayer.new()
        expect(new_partnership.save).to_not be_truthy
    end


    it "should not be possible to create AlbumPlayers repeated" do
        new_album = FactoryBot.create(:album)
        new_player = FactoryBot.create(:player)
        new_partnership = AlbumPlayer.create!(album: new_album, player: new_player)
        repeat_partnership = AlbumPlayer.new(album: new_album, player: new_player)
        expect(repeat_partnership.save).to_not be_truthy
    end
end 