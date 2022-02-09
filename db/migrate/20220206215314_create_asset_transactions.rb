class CreateAssetTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :asset_transactions do |t|
      t.date :date
      t.string :name
      t.float :value
      t.float :quantity
      t.references :asset, null: false, foreign_key: true
      t.references :fund, null: false, foreign_key: true

      t.timestamps
    end
  end
end
