class Deal < ApplicationRecord
  belongs_to :user
  validates :status , inclusion: { in: ['New', 'In Progress', 'Done'], message: "%{value} is not a valid status" }
  #scope :basic_info,->{where(user_id: current_user.id)}
end
