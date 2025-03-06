# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




# Admin.create(email: "admin@example.com", password: "password")

# (1..10).each do |i|
# Category.create!(name: "Category #{i}", description: "test")
# end



# <%= image_tag(@post.cover_art, class: 'w-60 h-60 object-cover') if @post.cover_art.attached? %>
# <%= image_tag(category.image, class: 'w-16') if category.image.attached? %>
# <%= category.image.present? ? image_tag(category.image.variant(:thumb), class: 'w-60 h-60 object-cover') :image_tag("https://via.placeholder.com/50") %>
