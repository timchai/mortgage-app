class ChangeFirstNameToFullNameToApplications < ActiveRecord::Migration
  def change
    rename_column :applications, :first_name, :full_name
  end
end
