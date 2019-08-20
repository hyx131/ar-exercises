require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

@store2 = Store.find(2)

@store2.employees.create(first_name: "Selin", last_name: "Huang", hourly_rate: 60)

@employee6 = Employee.find(6)
puts @employee6.password