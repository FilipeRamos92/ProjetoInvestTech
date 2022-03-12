class AddForeignKeyToSecurity < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :close_prices, :securities
  end
end
