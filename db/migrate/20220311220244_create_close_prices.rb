class CreateClosePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :close_prices do |t|
      t.date :date
      t.float :price
      t.integer :security_id
      
      t.references :security, null: false, foreign_key: true
      t.timestamps
    end
  end
end
