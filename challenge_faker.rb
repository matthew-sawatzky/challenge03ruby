require 'faker'
require_relative 'ar.rb'

def category_name
    Faker::OnePiece.location
end

def akuma_no_mi_name
    Faker::OnePiece.akuma_no_mi
end

def product_description
    Faker::OnePiece.quote
end

def product_price
    Faker::Number.decimal(2).to_f
end

def product_stock_quantity
    Faker::Number.decimal(2).to_f
end

10.times do
  category = Category.create(name: category_name())
  
  Product.create(
    name: akuma_no_mi_name(),
    description: product_description(),
    price: product_price(),
    stock_quantity: product_stock_quantity(),
    category_id: category.id,
    created_at: Time.now,
    updated_at: Time.now
  )
end
