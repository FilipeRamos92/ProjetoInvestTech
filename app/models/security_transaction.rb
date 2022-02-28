class SecurityTransaction < ApplicationRecord
  belongs_to :security
  belongs_to :fund

  def self.calc_portfolio(fund_id, date=Date.today) 
    all.
    select("security_id, sum(security_transactions.quantity) as quantity")
    .group("security_id")
    .where(fund_id: fund_id)
    .where("date <= ? ", date)
    .having("sum(security_transactions.quantity) <> 0")
    .includes(:security)
  end

  # def as_json(_option) 
  #   super({
  #     only: [:quantity], 
  #     include: {
  #       security: {
  #         only: [:id, :symbol, :price]
  #       }
  #     }
  #   }) 
  # end
end
