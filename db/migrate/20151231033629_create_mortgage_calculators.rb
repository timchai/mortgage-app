class CreateMortgageCalculators < ActiveRecord::Migration
  def change
    create_table :mortgage_calculators do |t|
      t.integer :purchase_price
      t.integer :loan_amount
      t.integer :down_payment

      t.timestamps null: true
    end
  end
end
