require 'rails_helper'

RSpec.describe Album, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_and_belong_to_many(:players) }
end
