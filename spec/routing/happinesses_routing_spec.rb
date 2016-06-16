require "rails_helper"

RSpec.describe Api::V1::HappinessesController, :type => :routing do
  describe "routing" do

    it "routes to #top_happiest_cities" do
      expect(:get => "v1/top-happiest-cities").to route_to("api/v1/happinesses#top_happiest_cities")
    end

    it "routes to #create" do
      expect(:post => "v1/happinesses").to route_to("api/v1/happinesses#create")
    end

  end
end
