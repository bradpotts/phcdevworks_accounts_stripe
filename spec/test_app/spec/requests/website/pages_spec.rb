require 'rails_helper'

RSpec.describe "Website::Pages", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/website/pages/index"
      expect(response).to have_http_status(:success)
    end
  end

end
