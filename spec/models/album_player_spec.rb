require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
  let(:album_player) { create(:album_player) }

  it { expect(album_player).to be_valid }

  context 'when fk is missing' do
    it { expect(build(:album_player, player: nil)).to_not be_valid }
    it { expect(build(:album_player, album: nil)).to_not be_valid }
  end
end
