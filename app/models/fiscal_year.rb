class FiscalYear < ApplicationRecord
  belongs_to :company
  has_many :monthly_reports, dependent: :destroy
  validates :year, presence: true
end
