class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true, allow_nil: false, allow_blank: false

  # before_create do |employee|
  #   employee.password = generate_string
  # end

  after_create do |employee|
    Employee.find(employee.id).update(password: generate_string)
  end

  private

  def generate_string
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    (0...8).map { o[rand(o.length)] }.join
  end

end
