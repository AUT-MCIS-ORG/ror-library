require 'rails_helper'

RSpec.describe ResultController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #listMySavedSearches" do
    it "returns http success" do
      get :listMySavedSearches
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #print" do
    it "returns http success" do
      get :print
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #shareByEmail" do
    it "returns http success" do
      get :shareByEmail
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #saveSearch" do
    it "returns http success" do
      get :saveSearch
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #saveResults" do
    it "returns http success" do
      get :saveResults
      expect(response).to have_http_status(:success)
    end
  end

end
