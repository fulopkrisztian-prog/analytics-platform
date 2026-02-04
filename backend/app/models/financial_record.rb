class FinancialRecord < ApplicationRecord
  belongs_to :project
  belongs_to :project_allocation, optional: true

  validates :amount, presence: true, numericality: true
  validates :category, presence: true 
end