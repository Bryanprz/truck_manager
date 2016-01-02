require "rails_helper"

RSpec.describe ClientReceiptsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/client_receipts").to route_to("client_receipts#index")
    end

    it "routes to #new" do
      expect(:get => "/client_receipts/new").to route_to("client_receipts#new")
    end

    it "routes to #show" do
      expect(:get => "/client_receipts/1").to route_to("client_receipts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/client_receipts/1/edit").to route_to("client_receipts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/client_receipts").to route_to("client_receipts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/client_receipts/1").to route_to("client_receipts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/client_receipts/1").to route_to("client_receipts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/client_receipts/1").to route_to("client_receipts#destroy", :id => "1")
    end

  end
end
