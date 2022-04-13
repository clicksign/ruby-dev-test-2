require 'rails_helper'

RSpec.describe "Albums", type: :request do
 
  context "GET #index" do
    it "should success and render to index page" do
      get "/albums" 
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index) 
    end

    it "should have an empty array" do 
      get "/albums"
      expect(assigns(:albums)).to be_empty
    end

    it "should not have an empty array" do 
      create(:album)   
      get "/albums"
      expect(assigns(:albums)).to_not be_empty 
    end

end

context "GET #Show" do 
    
    let(:album) { create(:album)}

    it "should success and render to show page" do
        get "/albums/1", params: { id: album.id }
        expect(response).to have_http_status(200)
        expect(response).to render_template(:show)
    end

    it "show where id" do 
        get "/albums/1", params: { id: album.id}
        expect(assigns(:album)).to be_a(Album)
       
    end

end

context "GET #new" do 
    let(:album) {create(:album)}
    it "should success and render to new page" do 
      get "/albums/new"
      expect(response).to have_http_status(200)
      expect(response).to render_template(:new)  
    end

    it "should new post" do 
      get "/albums/new"
      expect(assigns(:album)).to be_a(Album) 
    end
end


# context "GET #edit" do 
#     let(:album) { create(:album) }
#     let(:player) {create(:player)}
#     it "should success and render to edit page" do 
#       get "/albums/1", params: {id: album.id}
#       expect(response).to have_http_status(200) 
#       expect(response).to render_template(:edit)
#     end
# end


context "CREATE #create" do 
    let!(:album) { create(:album)}
    let(:player) {create(:player)}
    
    it "should create a new album" do 
      set_album = { 
          name: album.name, 
          player_ids: [player.id]
       }
      post "/albums", params: { album: set_album  }
      expect(flash[:notice]).to eq("Album was successfully created.")
    end

    it "not create a new post" do 
     set_album = { 
        name: ""
      }
     post "/albums", params: {album: set_album}
     expect(response).to render_template("new")
    end


end

context "PUT #update" do 
    let(:album) { create(:album)}
    it "should update a album and notice" do
        set_album = { 
            name: album.name, 
        
          }
     
     put "/albums/1", params: {id: album.id, album: set_album }
     album.reload

     expect(flash[:notice]).to eq("Album was successfully updated.")
     expect(response).to redirect_to(action: :show, id: assigns(:album).id)
    end

end

context "Destroy #destroy" do 
    let(:album) { create(:album) }

    it "Should destroy a album" do 
      delete "/albums/1", params: {id: album.id }
      expect(flash[:notice]).to eq("Album was successfully destroyed.")
    end
    
end

end
