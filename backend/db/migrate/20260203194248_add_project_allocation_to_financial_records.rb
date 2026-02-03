class AddProjectAllocationToFinancialRecords < ActiveRecord::Migration[7.1]
  def change
    add_reference :financial_records, :project_allocation, null: false, foreign_key: true
  end
end
