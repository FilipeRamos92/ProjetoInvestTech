class CreateSecurityTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :security_transactions do |t|
      t.date :transaction_date
      t.string :transaction_name
      t.float :transaction_value
      t.integer :transaction_quantity
      t.references :security, null: false, foreign_key: true
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
