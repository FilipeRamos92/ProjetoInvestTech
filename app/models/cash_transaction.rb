class CashTransaction < ApplicationRecord
  belongs_to :fund

  def self.calc_cash(fund_id, date=Date.today)
    all.select("id, date, description, fund_id, value")
    .where(fund_id: fund_id)
    .where("date <= ?", date)
    .order("date")
  end
  def self.transactions_with_funds()
    all.select("id, date, description, fund_id, value")
    .order("date")
    .includes(:fund)
  end

end
