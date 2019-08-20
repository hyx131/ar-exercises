class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
