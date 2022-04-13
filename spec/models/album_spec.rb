require 'rails_helper'

RSpec.describe Album, type: :model do
  
  context "Album name" do 
    let(:album) {create(:album)}
    
    it "has name" do 
      expect(album.name).to eq("Comboio")  
    end

    it "do not has name" do 
      album.name = ""
      expect(album.name).to eq("")  
    end

  end

end
