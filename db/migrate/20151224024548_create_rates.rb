class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :fixed
      t.string :variable

      t.timestamps null: true
    end
  end
end
