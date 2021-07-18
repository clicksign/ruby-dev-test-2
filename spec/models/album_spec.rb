require 'rails_helper'

RSpec.describe Album, type: :model do
  context 'has many players through album_players' do
    it { should respond_to(:players) }
  end
end
