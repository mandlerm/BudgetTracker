class CreateOutgos < ActiveRecord::Migration[5.1]
  def change
    create_table :outgos do |t|
      t.date :date
      t.integer :amount
      t.string :recipient
      t.integer :sub_category_id

      t.timestamps
    end
  end
end
