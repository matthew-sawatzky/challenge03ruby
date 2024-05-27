require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

any_product = Product.first

puts "The first/any product is #{any_product}."