require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum("annual_revenue")
@all_store = Store.count

# output the total annual revenue
p @total_revenue
# output the average annual revenue of all store
p @total_revenue / @all_store
# output number of store total ann rev more than 1m
p Store.where("annual_revenue > ?", 1_000_000).count
