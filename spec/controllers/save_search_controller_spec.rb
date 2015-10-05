require 'rails_helper'

RSpec.describe SaveSearchController, type: :controller do

    login_admin

  describe "POST #save" do
    it "returns http success" do
      post :save, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #list" do
    it "returns http success" do
      get :list, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

end
