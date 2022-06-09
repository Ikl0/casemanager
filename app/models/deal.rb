class Deal < ApplicationRecord
  belongs_to :user
  validates :status , inclusion: { in: ['New', 'In Progress', 'Done'], message: "%{value} is not a valid status" }
end
