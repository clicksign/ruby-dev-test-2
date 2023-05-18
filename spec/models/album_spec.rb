require 'rails_helper'

RSpec.describe Album, type: :model do
  before do
    @album = subject.class.new(name: 'Album 1')
  end
  context 'invalid params' do
    it 'name is nil' do
      @album.name = nil
      expect(@album).to_not be_valid
    end
  end
  context 'valid Album' do
    it { expect(@album).to be_valid }
  end
end
