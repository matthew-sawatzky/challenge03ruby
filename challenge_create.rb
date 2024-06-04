require_relative 'ar.rb'

    product1 = Product.new(id: 494, name: "Product 1", description: "Test1", price: 10.00, stock_quantity: 0, category_id: 1, created_at: Time.now, updated_at: Time.now)
    if product1.save
        puts "Product 1 saved successfully!"
    else
        puts product1.errors.full_messages
    end


product2 = Product.create(id: 495, name: 'Product 2', description: 'Test2', price: 10.00, stock_quantity: 1, category_id: 1, created_at: Time.now, updated_at: Time.now)

product3 = Product.new do |p|
  p.id = 496
  p.name = "Product 3"
  p.description = "Test3"
  p.price = 10.00
  p.stock_quantity = 1
  p.category_id = 1
  p.created_at = Time.now()
  p.updated_at = Time.now()
end
if product3.save
    puts "Product 3 saved successfully!"
else
    puts product3.errors.full_messages
end

product4 = Product.new(id: 4, description: "Test3", price: 10.00, stock_quantity: 1, category_id: 1, created_at: Time.now, updated_at: Time.now)
if product4.save
    puts "Product 4 saved successfully!"
else
    puts product4.errors.full_messages
end
