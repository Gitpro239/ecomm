class Category < ApplicationRecord
  has_one_attached :image
  # has_one_attached :image do |attachable|
  #   attachable.variant :thumb, resize_to_limit: [60, 60 ]
  # end
  has_many :products
end
