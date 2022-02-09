class CreateCashTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :cash_transactions do |t|
      t.date :date
      t.string :description
      t.float :value
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
