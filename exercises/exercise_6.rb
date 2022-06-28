require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { in: 40..200 }
  validates :store_id, presence: true
  belongs_to :store
end

@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

@store2.employees.create(first_name: "Peter", last_name: "Pan", hourly_rate: 45)

@store2.employees.create(
  first_name: "Harry",
  last_name: "Potter",
  hourly_rate: 70
)

@store4.employees.create(
  first_name: "Peter",
  last_name: "Paker",
  hourly_rate: 65
)

@store5.employees.create(
  first_name: "Jacky",
  last_name: "Chan",
  hourly_rate: 40
)

@store6.employees.create(first_name: "Bruce", last_name: "Lee", hourly_rate: 40)
