require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} products in the products table."

any_product = Product.first
puts "The first/any product is #{any_product[:name]}."

columns = Product.inspect
puts "Columns in the products table: #{columns}"
# id, name, description, price, stock_quantity, category_id, created_at, updated_at

# Based on the product table columns, it should have an association with the category table through category_id.

    number_of_products = Product.all.count
    puts "There are #{number_of_products} products in the products table."

    products_above_c = Product.where('name LIKE "C%" AND price > 10')
    puts "Products above $10 with names starting with 'C':"
    products_above_c.each { |product| puts product.name }

    low_stock_products = Product.where('stock_quantity > 5').count
    puts "The number of low stock products is: #{low_stock_products}."



    product = Product.find_by(name: "Product 2")

    category_name = product.category.name
    puts "#{category_name}"

# Find the specific category
category = Category.find_by(name: "Beverages")

new_product = category.products.build(
    id: 500,
    name: "Product Name",
    description: "Product Description",
    price: 15.0,
    stock_quantity: 100,
    created_at: Time.now,
    updated_at: Time.now
)

new_product.save
puts new_product.inspect


category_find = Category.find_by(id: 8)

products_in_category = Product.where('price > 5.0 AND category_id = ?', category_find)
products_in_category.each { |product| puts product.name }

