class AddIndexForBudgetToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :budget, index: true
  end
end
