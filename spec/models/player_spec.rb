require 'rails_helper'

RSpec.describe Player, type: :model do
  context "Player name" do 
    let(:player) {create(:player)}
    
    it "has name" do 
      expect(player.name).to eq("Os Lambas")  
    end

    it "do not has name" do 
      player.name = ""
      expect(player.name).to eq("")  
    end

  end
end
