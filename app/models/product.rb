class Product < ApplicationRecord
  belongs_to :category
  has_many :stocks # , dependent: :destroy
  has_many_attached :images
  has_many :order_products
end
