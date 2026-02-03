class CreateResources < ActiveRecord::Migration[7.1]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :category
      t.decimal :unit_price

      t.timestamps
    end
  end
end
