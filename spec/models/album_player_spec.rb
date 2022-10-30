# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AlbumPlayer, type: :model do
  it { is_expected.to belong_to :album }
  it { is_expected.to belong_to :player }
end
