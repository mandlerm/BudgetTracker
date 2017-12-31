class RemoveIncomeSourceIdColumnFromIncomes < ActiveRecord::Migration[5.1]
  def change
    remove_column :incomes, :income_source_id, :integer
  end
end
