require 'rails_helper'

RSpec.describe Album, :type => :model do
  it "is a Album with valid attributes" do
    expect(Album.new(name:"Giant Steps")).to be_valid
  end

  it "is a Album without name" do
    expect(Album.new()).to be_invalid
  end
end