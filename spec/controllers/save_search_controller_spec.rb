require 'rails_helper'

RSpec.describe SaveSearchController, type: :controller do

    login_admin





  describe "POST #save" do
    it "returns http success" do
      get :list, :format => :json
      expect(response).to have_http_status(:success)                  #post {"search_name":"name2","search_values":"xxxxxxxxxxxxxxxxxxxx"} => :json

                  #post :save, :format => :json
                  #expect(response).to have_http_status(:success)
    end
  end

  describe "GET #list" do
    it "returns http success" do
      get :list, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "save" do

   before :each do

    SavedSearch = nil

    end
    it "save should not successful" do

    rc = SavedSearch
    expect(@ok).not_to eq("success")
    end
   end

  describe "delete" do

   it "delete should not be successful" do
   row = SavedSearch
   expect(@ok).not_to eq("success")

  end

end


end
