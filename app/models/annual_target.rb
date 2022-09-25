class AnnualTarget < ApplicationRecord
  validates :year, presence: true, length: { maximum: 4 }
  validates :name, presence: true
end
