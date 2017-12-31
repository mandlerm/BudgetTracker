class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :income_id
      t.integer :outgo_id
      t.integer :user_id
      t.string :notes

      t.timestamps
    end
  end
end
