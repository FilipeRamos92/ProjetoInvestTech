require "rails_helper"

RSpec.describe SecuritiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/securities").to route_to("securities#index")
    end

    it "routes to #show" do
      expect(get: "/securities/1").to route_to("securities#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/securities").to route_to("securities#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/securities/1").to route_to("securities#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/securities/1").to route_to("securities#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/securities/1").to route_to("securities#destroy", id: "1")
    end
  end
end
