require 'rails_helper'

RSpec.describe SourceRatingController, type: :controller do

  describe "GET #rate" do
    it "returns http success" do
      get :rate
      expect(response).to have_http_status(:success)
    end
  end

end
