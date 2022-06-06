class Deal < ApplicationRecord
  belongs_to :user
  validates :status , inclusion: { in: %w(New Active Done), message: "%{value} is not a valid status" }
end
