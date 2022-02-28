class CashLiquid < ApplicationRecord
    def self.calc_cash_liquid(fund_id, date=Date.today)
        CashTransaction.all
        .where(fund_id: fund_id)
        .where("date <= ?", date)
        .sum("value")
    end
end