class CreateFinancialRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :financial_records do |t|
      t.references :project, null: false, foreign_key: true
      t.decimal :amount
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
