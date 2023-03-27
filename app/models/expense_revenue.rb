class ExpenseRevenue < ApplicationRecord
  belongs_to :category
  belongs_to :monthly_report
end
