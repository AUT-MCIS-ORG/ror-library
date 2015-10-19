require 'rails_helper'

RSpec.describe ResultController, type: :controller do

    login_admin

  describe "GET #index" do
    it "returns http success" do
      get :index
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
      get :shareByEmail, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #saveSearch" do
    it "returns http success" do
      post :saveSearch, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #saveResults" do
    it "returns http success" do
      get :saveResults
      expect(response).to have_http_status(:success)
    end
  end

  describe "index" do
    before :each do
      searchID= nil
    end
    it "select results" do
    #  ResultController.to_s.start_with?("select")
      expect(@searchString).to eq(nil)
    end
  end

  describe "getSourceDetail" do
    before :each do
      @rc = 1
    end
      it "record not found" do
       #@source = Source.find(id)
       expect(@source).to eq(nil)

      end
  end

end
