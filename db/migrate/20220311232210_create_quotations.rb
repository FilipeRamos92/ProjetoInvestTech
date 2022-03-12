class CreateQuotations < ActiveRecord::Migration[7.0]
  def change
    create_table :quotations do |t|
      t.date :date
      t.float :price
      t.references :security, null: false, foreign_key: true

      t.timestamps
    end
  end
end
