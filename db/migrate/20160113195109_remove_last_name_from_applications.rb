class RemoveLastNameFromApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :last_name, :string
  end
end
