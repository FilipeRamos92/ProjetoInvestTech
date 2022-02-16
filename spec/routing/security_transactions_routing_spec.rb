require "rails_helper"

RSpec.describe SecurityTransactionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/security_transactions").to route_to("security_transactions#index")
    end

    it "routes to #show" do
      expect(get: "/security_transactions/1").to route_to("security_transactions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/security_transactions").to route_to("security_transactions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/security_transactions/1").to route_to("security_transactions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/security_transactions/1").to route_to("security_transactions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/security_transactions/1").to route_to("security_transactions#destroy", id: "1")
    end
  end
end
