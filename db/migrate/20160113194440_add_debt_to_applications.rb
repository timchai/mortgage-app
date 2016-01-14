class AddDebtToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :debt, :integer
  end
end
