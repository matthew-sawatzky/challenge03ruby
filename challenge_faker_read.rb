require_relative 'ar.rb'

# Fetch all categories
categories = Category.all

categories.each do |category|
  puts "Category ID: #{category.id}"
  puts "Name: #{category.name}"
  puts "Created At: #{category.created_at}"
  puts "Updated At: #{category.updated_at}"
  puts "-" * 20

  products = category.products

  if products.any?
    products.each do |product|
      puts "  * Product Name: #{product.name}"
      puts "    Price: $#{product.price}"
    end
  else
    puts "  No products available for this category."
  end

  puts "-" * 20
end
