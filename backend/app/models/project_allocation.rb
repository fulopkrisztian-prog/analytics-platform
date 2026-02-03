class ProjectAllocation < ApplicationRecord
  belongs_to :project
  belongs_to :worker
  belongs_to :resource
  belongs_to :user
end
