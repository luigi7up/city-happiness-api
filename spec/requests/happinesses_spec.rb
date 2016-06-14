require 'rails_helper'

RSpec.describe "Happinesses", :type => :request do
  describe "GET /happinesses" do
    it "works! (now write some real specs)" do
      get happinesses_path
      expect(response).to have_http_status(200)
    end
  end
end
