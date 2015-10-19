require 'rails_helper'

RSpec.describe SourceRatingController, type: :controller do

  login_admin

  describe "POST #rate" do
    it "returns http success" do
      post :rate, :format => :json
      expect(response).to have_http_status(:success)
    end
  end

end
