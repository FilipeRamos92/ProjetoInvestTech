class PortfoliosController < ApplicationController 
    def index
        render json: SecurityTransaction.calc_portfolio(id, date)
        .as_json(only: [:quantity], include: {
            security: {
                only: [:id, :symbol, :price]
            }
        })
    end

    def cash_liquid
        render json: CashLiquid.calc_cash_liquid(id, date)
    end

    def security_liquid
        render json: SecurityLiquid.calc_security_liquid(id, date)
    end

    def security_balance
        render json: Balance.calc_security_balance(id, date)
    end

    protected 

    def id
        params[:id]
    end

    def date
        Date.parse(params[:date])
    end
    
end