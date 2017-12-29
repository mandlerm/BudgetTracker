class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.date :month_year
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
