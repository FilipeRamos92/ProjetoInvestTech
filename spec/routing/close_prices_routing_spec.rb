require "rails_helper"

RSpec.describe ClosePricesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/close_prices").to route_to("close_prices#index")
    end

    it "routes to #show" do
      expect(get: "/close_prices/1").to route_to("close_prices#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/close_prices").to route_to("close_prices#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/close_prices/1").to route_to("close_prices#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/close_prices/1").to route_to("close_prices#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/close_prices/1").to route_to("close_prices#destroy", id: "1")
    end
  end
end
