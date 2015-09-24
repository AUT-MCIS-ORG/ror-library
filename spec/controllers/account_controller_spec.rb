require 'rails_helper'

RSpec.describe AccountController, type: :controller do

  describe "GET #listAllUsers" do
    it "returns http success" do
      get :listAllUsers
      expect(response).to have_http_status(:success)
    end
  end

end
