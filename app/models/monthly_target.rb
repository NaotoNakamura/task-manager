class MonthlyTarget < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :gains, dependent: :destroy
end
