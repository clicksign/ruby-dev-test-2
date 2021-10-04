require 'rails_helper'

RSpec.describe Album, type: :model do
  
  subject { described_class.new(name: "Like a Virgin") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "should have many accounts" do
    album = Album.reflect_on_association(:account)
    expect(album.macro).to eq(:has_many)
  end

end
