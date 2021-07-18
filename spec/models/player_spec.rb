require 'rails_helper'

RSpec.describe Player, type: :model do
  context 'has many albums through album_players' do
    it { should respond_to(:albums) }
  end
end
