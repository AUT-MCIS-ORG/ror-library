require 'rails_helper'
require 'rspec/rails'


RSpec.describe AccountController, type: :controller do

  login_admin

  describe "GET #listAllUsers" do
    it "returns http success" do
      get :listAllUsers
      expect(response).to have_http_status(:success)
    end
  end

end
