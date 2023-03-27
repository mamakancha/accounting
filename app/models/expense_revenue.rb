class ExpenseRevenue < ApplicationRecord
  belongs_to :monthly_report
  belongs_to :category
  validates :amount, presence: true
end
