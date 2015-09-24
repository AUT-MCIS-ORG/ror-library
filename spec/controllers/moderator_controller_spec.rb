require 'rails_helper'

RSpec.describe ModeratorController, type: :controller do

  describe "GET #listAllPendingArticles" do
    it "returns http success" do
      get :listAllPendingArticles
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #listAllRejectedArticles" do
    it "returns http success" do
      get :listAllRejectedArticles
      expect(response).to have_http_status(:success)
    end
  end

end
