require 'rails_helper'

RSpec.describe "Monitorings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/monitorings/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/monitorings/new"
      expect(response).to have_http_status(:success)
    end
  end

end
