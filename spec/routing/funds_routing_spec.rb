require "rails_helper"

RSpec.describe FundsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/funds").to route_to("funds#index")
    end

    it "routes to #show" do
      expect(get: "/funds/1").to route_to("funds#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/funds").to route_to("funds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/funds/1").to route_to("funds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/funds/1").to route_to("funds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/funds/1").to route_to("funds#destroy", id: "1")
    end
  end
end
