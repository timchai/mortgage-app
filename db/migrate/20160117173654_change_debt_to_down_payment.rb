class ChangeDebtToDownPayment < ActiveRecord::Migration
  def change
    rename_column :applications, :debt, :down_payment
  end
end
