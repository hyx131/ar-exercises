require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find(1)
@store2 = Store.find(2)
@store4 = Store.find(4)
@store5 = Store.find(5)

@store1.employees.create([
  {first_name: "Khurram", last_name: "Virani", hourly_rate: 60},
  {first_name: "Totoro", last_name: "T", hourly_rate: 100}
])

@store2.employees.create(first_name: "Toto", last_name: "Vir", hourly_rate: 60)

@store4.employees.create(first_name: "Tot4", last_name: "Vi4", hourly_rate: 60)
@store5.employees.create(first_name: "Totoro5", last_name: "Virani5", hourly_rate: 60)


