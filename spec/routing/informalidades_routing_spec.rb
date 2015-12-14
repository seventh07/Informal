require "rails_helper"

RSpec.describe InformalidadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/informalidades").to route_to("informalidades#index")
    end

    it "routes to #new" do
      expect(:get => "/informalidades/new").to route_to("informalidades#new")
    end

    it "routes to #show" do
      expect(:get => "/informalidades/1").to route_to("informalidades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/informalidades/1/edit").to route_to("informalidades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/informalidades").to route_to("informalidades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/informalidades/1").to route_to("informalidades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/informalidades/1").to route_to("informalidades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/informalidades/1").to route_to("informalidades#destroy", :id => "1")
    end

  end
end
