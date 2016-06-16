require 'rails_helper'

RSpec.describe "Happinesses", :type => :request do
  describe "GET /v1/happinesses" do
    it "works! (now write some real specs)" do
      get v1_top_happy_cities_path
      expect(response).to have_http_status(200)
    end
  end
end
