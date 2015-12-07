require "rails_helper"

RSpec.describe FixesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fixes").to route_to("fixes#index")
    end

    it "routes to #new" do
      expect(:get => "/fixes/new").to route_to("fixes#new")
    end

    it "routes to #show" do
      expect(:get => "/fixes/1").to route_to("fixes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fixes/1/edit").to route_to("fixes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fixes").to route_to("fixes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fixes/1").to route_to("fixes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fixes/1").to route_to("fixes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fixes/1").to route_to("fixes#destroy", :id => "1")
    end

  end
end
