require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'Album class' do
    it { should validate_presence_of(:name) }
    it { should belong_to(:player).optional(:true) } # TO-DO: remove Player references on Album
    it { should have_many(:partnerships).with_foreign_key('album_id') }
  end
end