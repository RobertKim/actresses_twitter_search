require "spec_helper"

describe ActressesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/actresses").to route_to("actresses#index")
    end

    it "routes to #new" do
      expect(:get => "/actresses/new").to route_to("actresses#new")
    end

    it "routes to #show" do
      expect(:get => "/actresses/1").to route_to("actresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/actresses/1/edit").to route_to("actresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/actresses").to route_to("actresses#create")
    end

    it "routes to #update" do
      expect(:put => "/actresses/1").to route_to("actresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/actresses/1").to route_to("actresses#destroy", :id => "1")
    end

  end
end
