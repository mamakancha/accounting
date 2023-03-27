class MonthlyReport < ApplicationRecord
  belongs_to :fiscal_year
  has_many :expense_revenues, dependent: :destroy
  validates :month, presence: true
end
