require 'rails_helper'

RSpec.describe ArticleController, type: :controller do

    login_admin

  describe "GET #getPreview" do
    it "returns http success" do
      get :getPreview, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #postRating" do
    it "returns http success" do
      post :postRating, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

end
