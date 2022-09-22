class Task < ApplicationRecord
  belongs_to :monthly_target
  has_many :daily_tasks, dependent: :destroy
end
