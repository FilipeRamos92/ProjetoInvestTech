require "rails_helper"

RSpec.describe CashTransactionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/cash_transactions").to route_to("cash_transactions#index")
    end

    it "routes to #show" do
      expect(get: "/cash_transactions/1").to route_to("cash_transactions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/cash_transactions").to route_to("cash_transactions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/cash_transactions/1").to route_to("cash_transactions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/cash_transactions/1").to route_to("cash_transactions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/cash_transactions/1").to route_to("cash_transactions#destroy", id: "1")
    end
  end
end
