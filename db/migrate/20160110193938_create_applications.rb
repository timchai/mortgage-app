class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.integer :income
      t.integer :fico_score
      t.boolean :bankruptcy

      t.timestamps null: true
    end
  end
end
