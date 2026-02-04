class Resource < ApplicationRecord
  has_many :project_allocations
  has_many :projects, through: :project_allocations
end