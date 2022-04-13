require 'rails_helper'

RSpec.describe "Players", type: :request do
  
  context "GET #index" do
    it "should success and render to index page" do
      get "/players" 
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index) 
    end

    it "should have an empty array" do 
      get "/players"
      expect(assigns(:players)).to be_empty
    end

    it "should not have an empty array" do 
      create(:player)   
      get "/players"
      expect(assigns(:players)).to_not be_empty 
    end

end

context "GET #Show" do 
    
    let(:player) { create(:player)}

    it "should success and render to show page" do
        get "/players/1", params: { id: player.id }
        expect(response).to have_http_status(200)
        expect(response).to render_template(:show)
    end

    it "show where id" do 
        get "/players/1", params: { id: player.id}
        expect(assigns(:player)).to be_a(Player)
       
    end

end

context "GET #new" do 
    let(:player) {create(:player)}
    it "should success and render to new page" do 
      get "/players/new"
      expect(response).to have_http_status(200)
      expect(response).to render_template(:new)  
    end

    it "should new post" do 
      get "/players/new"
      expect(assigns(:player)).to be_a(Player) 
    end
end


# context "GET #edit" do 
#     let(:player) { create(:player) }
#     let(:player) {create(:player)}
#     it "should success and render to edit page" do 
#       get "/players/1", params: {id: player.id}
#       expect(response).to have_http_status(200) 
#       expect(response).to render_template(:edit)
#     end
# end


context "CREATE #create" do 
    let!(:player) { create(:player)}
    let(:album) {create(:album)}
    
    it "should create a new player" do 
      set_player = { 
          name: player.name, 
          album_ids: [album.id]
       }
      post "/players", params: { player: set_player  }
      expect(flash[:notice]).to eq("Player was successfully created.")
    end

    it "not create a new post" do 
     set_player = { 
        name: ""
      }
     post "/players", params: {player: set_player}
     expect(response).to render_template("new")
    end


end

context "PUT #update" do 
    let(:player) { create(:player)}
    it "should update a player and notice" do
        set_player = { 
            name: player.name, 
        
          }
     
     put "/players/1", params: {id: player.id, player: set_player }
     player.reload

     expect(flash[:notice]).to eq("Player was successfully updated.")
     expect(response).to redirect_to(action: :show, id: assigns(:player).id)
    end

end

context "Destroy #destroy" do 
    let(:player) { create(:player) }

    it "Should destroy a player" do 
      delete "/players/1", params: {id: player.id }
      expect(flash[:notice]).to eq("Player was successfully destroyed.")
    end
    
end

end
