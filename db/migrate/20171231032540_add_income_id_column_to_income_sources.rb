class AddIncomeIdColumnToIncomeSources < ActiveRecord::Migration[5.1]
  def change
    add_column :income_sources, :income_id, :integer
  end
end
