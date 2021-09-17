require 'rails_helper'

describe Album do
    context 'when validates' do
        it 'attributes cannot be blank' do
          album = described_class.new

          album.valid?

          expect(album.errors[:name]).to include('Cannot be blank')
          expect(album.errors[:player_id]).to include('Cannot be blank')
        end
    end

    context 'when generate_split_album' do
        it 'successfully' do
            shakira = Player.create(name: "Shakira")
            madonna = Player.create(name: "Madonna")
            described_class.create(name: "Some Album", player_id: {artists: [shakira, madonna]})

            expect(SplitAlbum.count).to eq(2)
        end
    end
end