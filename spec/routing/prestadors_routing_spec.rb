require "rails_helper"

RSpec.describe PrestadorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/prestadors").to route_to("prestadors#index")
    end

    it "routes to #new" do
      expect(:get => "/prestadors/new").to route_to("prestadors#new")
    end

    it "routes to #show" do
      expect(:get => "/prestadors/1").to route_to("prestadors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/prestadors/1/edit").to route_to("prestadors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/prestadors").to route_to("prestadors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/prestadors/1").to route_to("prestadors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/prestadors/1").to route_to("prestadors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/prestadors/1").to route_to("prestadors#destroy", :id => "1")
    end

  end
end
