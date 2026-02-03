class CreateProjectAllocations < ActiveRecord::Migration[7.1]
  def change
    create_table :project_allocations do |t|
      t.references :project, null: false, foreign_key: true
      t.references :worker, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.decimal :hours_worked
      t.integer :quantity
      t.date :allocation_date

      t.timestamps
    end
  end
end
