class CreateOutgos < ActiveRecord::Migration[5.1]
  def change
    create_table :outgos do |t|
      t.date :date
      t.float :amount
      t.string :location
      t.integer :category_id
      t.integer :budget_id

      t.timestamps
    end
  end
end
