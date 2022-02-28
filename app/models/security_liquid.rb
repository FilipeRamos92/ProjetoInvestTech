class SecurityLiquid < ApplicationRecord
    def self.calc_security_liquid(fund_id, date=Date.today)
        SecurityTransaction.all
        .joins(:security)
        .where(fund_id: fund_id)
        .where("date <= ?", date)
        .sum("security_transactions.quantity * securities.price")
    end

end