class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.date :date
      t.float :amount
      t.integer :income_source_id

      t.timestamps
    end
  end
end
