class IncomeSources < ActiveRecord::Migration[5.1]
  def change
    create_table :income_sources do |t|
      t.string :name
    end
  end
end
