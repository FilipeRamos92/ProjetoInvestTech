class PortfoliosController < ApplicationController 
    def index
        render json: SecurityTransaction.calc_portfolio(params[:id], Date.parse(params[:date]))
    end
end