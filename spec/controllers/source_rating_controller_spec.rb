require 'rails_helper'

RSpec.describe SourceRatingController, type: :controller do

  login_admin

  describe "GET #rate" do
    it "returns http success" do
      get :rate, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

end
