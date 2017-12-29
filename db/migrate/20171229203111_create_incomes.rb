class CreateIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.date :date
      t.float :amount
      t.integer :source_id
      t.integer :budget_id

      t.timestamps
    end
  end
end
