class ProjectAllocation < ApplicationRecord
  belongs_to :project
  belongs_to :worker, optional: true
  belongs_to :resource, optional: true
  belongs_to :user 

  has_many :financial_records
end