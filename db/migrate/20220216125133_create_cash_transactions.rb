class CreateCashTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :cash_transactions do |t|
      t.date :transaction_date
      t.string :transaction_desc
      t.float :transaction_value
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
