require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
  it { is_expected.to belong_to :player }
  it { is_expected.to belong_to :album }
end
