class Category < ApplicationRecord
    has_many :expense_revenues, dependent: :destroy
    validates :name, presence: true, uniqueness: true
  end
  