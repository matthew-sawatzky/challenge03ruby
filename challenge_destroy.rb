require_relative 'ar.rb'

product_to_delete = Product.find_by(name: 'Product 1').destroy