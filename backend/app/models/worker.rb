class Worker < ApplicationRecord
  has_many :project_allocations
  has_many :projects, through: :project_allocations

  def full_name
    "#{first_name} #{last_name}"
  end
end