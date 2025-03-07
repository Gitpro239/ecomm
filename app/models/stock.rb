class Stock < ApplicationRecord
  belongs_to :product
  # @product = Product.find(:product_id)
  # @product = stock.product
end
