require 'rails_helper'

RSpec.describe(Player, type: :model) do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_and_belong_to_many(:albums) }
  end

  describe '#create' do
    it 'without album' do
      player = create(:player)

      expect(player.albums).to be_empty
    end

    it 'with album' do
      player = create(:player, :with_album)

      expect(player.albums).to be_present
    end

    it 'with two albums' do
      player = create(:player)
      album1 = create(:album)
      album2 = create(:album)
      player.albums << album1
      player.albums << album2
      player.save!

      expect(player.albums).to eq([album1, album2])
    end
  end

  describe '#update' do
    it 'remove one album' do
      player = create(:player)
      album1 = create(:album)
      album2 = create(:album)
      player.albums << album1
      player.albums << album2
      player.save!

      album2.destroy!

      expect(player.reload.albums).to eq([album1])
    end
  end
end
