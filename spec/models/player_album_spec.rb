
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlayerAlbum, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:album) }
    it { is_expected.to belong_to(:player) }
  end

  describe 'validations' do
    subject { FactoryBot.create(:player_album) }
    it { is_expected.to validate_uniqueness_of(:player_id).scoped_to(:album_id)}
  end
end
