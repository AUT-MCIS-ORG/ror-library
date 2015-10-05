require 'rails_helper'

RSpec.describe AnalystController, type: :controller do

    login_admin

  describe "GET #listAllPendingArticles" do
    it "returns http success" do
      get :listAllPendingArticles
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #listAllArticlesInProgress" do
    it "returns http success" do
      get :listAllArticlesInProgress
      expect(response).to have_http_status(:success)
    end
  end

end
