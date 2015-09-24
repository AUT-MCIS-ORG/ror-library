require 'rails_helper'

RSpec.describe ArticleController, type: :controller do

  describe "GET #getPreview" do
    it "returns http success" do
      get :getPreview
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #postRating" do
    it "returns http success" do
      get :postRating
      expect(response).to have_http_status(:success)
    end
  end

end
