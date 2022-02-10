class Fund < ApplicationRecord
    has_many :asset_transaction
    has_many :cash_transaction

    def self.funds_balance 
        {}
    end
end
