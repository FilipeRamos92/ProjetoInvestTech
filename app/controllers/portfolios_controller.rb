class PortfoliosController < ApplicationController 
    def index
        render json: SecurityTransaction.calc_portfolio(params[:id], Date.parse(params[:date]))
        .as_json(only: [:quantity], include: {
            security: {
                only: [:id, :symbol, :price]
            }
        })
    end

    def cash_liquid
        render json: CashLiquid.calc_cash_liquid(params[:id], Date.parse(params[:date]))
    end

    def security_liquid
        render json: SecurityLiquid.calc_security_liquid(params[:id], Date.parse(params[:date]))
    end

    def security_balance
        render json: Balance.calc_security_balance(params[:id], Date.parse(params[:date]))
    end
end