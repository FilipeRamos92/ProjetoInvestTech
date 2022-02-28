class CashTransaction < ApplicationRecord
  belongs_to :fund

  def self.calc_cash(fund_id, date=Date.today)
    all.select("date, description, fund_id, value")
    .where(fund_id: fund_id)
    .where("date <= ?", date)
  end

  def as_json(_option)
    super({
    only:[:date, :description, :fund_id, :value]
    })
  end
end
