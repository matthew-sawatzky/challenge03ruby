require_relative 'ar.rb'

product_large_stock = Product.where('stock_quantity > 40')

product_large_stock.update_all('stock_quantity = stock_quantity + 1')

