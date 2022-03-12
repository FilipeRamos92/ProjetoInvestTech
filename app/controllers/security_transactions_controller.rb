class SecurityTransactionsController < ApplicationController
  before_action :set_security_transaction, only: %i[ show update destroy ]

  # GET /security_transactions
  def index
    @security_transactions = SecurityTransaction.all

    render json: @security_transactions
  end

  # GET /security_transactions/1
  def show
    render json: @security_transaction
  end

  def show_with_security_name
    render json: SecurityTransaction.transactions_with_security_name(params[:id], Date.parse(params[:date]))
    .as_json(
      only: [:id, :date, :description, :quantity, :value, :security_id, :fund_id], 
      include: {
        security: {
            only: [:id, :symbol, :price]
        }
    })
  end

  def all_with_security_name
    render json: SecurityTransaction.all_transactions_with_security_name()
    .as_json(
      only: [:id, :date, :description, :quantity, :value, :security_id, :fund_id], 
      include: {
        security: {
            only: [:id, :symbol, :price]
        }
    })
  end

  # POST /security_transactions
  def create
    @security_transaction = SecurityTransaction.new(security_transaction_params)

    if @security_transaction.save
      render json: @security_transaction, status: :created, location: @security_transaction
    else
      render json: @security_transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /security_transactions/1
  def update
    if @security_transaction.update(security_transaction_params)
      render json: @security_transaction
    else
      render json: @security_transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /security_transactions/1
  def destroy
    @security_transaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_transaction
      @security_transaction = SecurityTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def security_transaction_params
      params.require(:security_transaction).permit(:date, :description, :value, :quantity, :security_id, :fund_id)
    end
end
