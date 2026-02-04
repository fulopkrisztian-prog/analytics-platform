class Project < ApplicationRecord
  belongs_to :user
  
  has_many :project_allocations, dependent: :destroy
  has_many :financial_records, dependent: :destroy

  has_many :workers, through: :project_allocations
  has_many :resources, through: :project_allocations

  validates :name, presence: true
end