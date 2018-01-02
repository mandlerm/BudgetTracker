class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.date :date
      t.integer :amount
      t.string :recipient
      t.integer :sub_category_id
      t.integer :income_source_id
      t.integer :user_id
      t.string :notes
      t.timestamps
    end
  end
end
