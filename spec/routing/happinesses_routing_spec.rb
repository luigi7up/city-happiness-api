require "rails_helper"

RSpec.describe HappinessesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/happinesses").to route_to("happinesses#index")
    end

    it "routes to #new" do
      expect(:get => "/happinesses/new").to route_to("happinesses#new")
    end

    it "routes to #show" do
      expect(:get => "/happinesses/1").to route_to("happinesses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/happinesses/1/edit").to route_to("happinesses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/happinesses").to route_to("happinesses#create")
    end

    it "routes to #update" do
      expect(:put => "/happinesses/1").to route_to("happinesses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/happinesses/1").to route_to("happinesses#destroy", :id => "1")
    end

  end
end
