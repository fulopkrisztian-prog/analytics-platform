class CreateWorkers < ActiveRecord::Migration[7.1]
  def change
    create_table :workers do |t|
      t.string :first_name
      t.string :last_name
      t.string :role

      t.timestamps
    end
  end
end
