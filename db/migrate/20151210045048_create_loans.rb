class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :name
      t.text :description

      t.timestamps null: true
    end
  end
end
