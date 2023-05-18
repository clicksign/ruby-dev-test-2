require 'rails_helper'

RSpec.describe Player, type: :model do
  before do
    @player = subject.class.new(name: 'Player 1')
  end
  context 'invalid params' do
    it 'name is nil' do
      @player.name = nil
      expect(@player).to_not be_valid
    end
  end
  context 'valid Player' do
    it { expect(@player).to be_valid }
  end
end
