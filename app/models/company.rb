class Company < ApplicationRecord
    has_secure_password
    has_many :fiscal_years, dependent: :destroy
    validates :name, :email, presence: true
    validates :email, uniqueness: true
  end
  