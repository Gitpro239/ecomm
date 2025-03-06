# Product index.html.erb

# <% content_for :title, "Products" %>

# <div class="w-full">
# <% if notice.present? %>
#     <p class="py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-md inline-block" id="notice"><%= notice %></p>
#   <% end %>

#   <div class="flex justify-between items-center">
#     <h1 class="font-bold text-4xl">Products</h1>
#     <%= link_to "New product", new_admin_product_path, class: "rounded-md px-3.5 py-2.5 bg-blue-600 hover:bg-blue-500 text-white block font-medium" %>
#   </div>

#   <div id="admin_products" class="min-w-full divide-y divide-gray-200 space-y-5">
#     <% if @admin_products.any? %>
#       <% @admin_products.each do |admin_product| %>
#         <div class="flex flex-col sm:flex-row justify-between items-center pb-5 sm:pb-0">
#           <%= render admin_product %>
#           <div class="w-full sm:w-auto flex flex-col sm:flex-row space-x-2 space-y-2">
#             <%= link_to "Show", admin_products_path, class: "w-full sm:w-auto text-center rounded-md px-3.5 py-2.5 bg-gray-100 hover:bg-gray-50 inline-block font-medium" %>
#             <%= link_to "Edit", edit_admin_product_path(admin_product), class: "w-full sm:w-auto text-center rounded-md px-3.5 py-2.5 bg-gray-100 hover:bg-gray-50 inline-block font-medium" %>
#             <div class="sm:inline-block">
#               <%= button_to "Destroy", admin_products_path, method: :delete, class: "w-full sm:w-auto rounded-md px-3.5 py-2.5 text-white bg-red-600 hover:bg-red-500 font-medium cursor-pointer", data: { turbo_confirm: "Are you sure?" } %>
#             </div>
#           </div>
#         </div>
#       <% end %>
#     <% else %>
#       <p class="text-center my-10">No products found.</p>
#     <% end %>
#   </div>
# </div>

# <div>
#   <strong class="block font-medium mb-1">Product Image:</strong>
#   <%= image_tag(product.images, class: 'w-64') if product.images.any.attached? %>
# </div>

# <div class="my-5">
# <%= form.label :images %>
# <%= form.file_field :images, multiple: true, rows: 4, class: ["block shadow-sm rounded-md border px-3 py-2 mt-2 w-full", {"border-gray-400 focus:outline-blue-600": admin_product.errors[:description].none?, "border-red-400 focus:outline-red-600": admin_product.errors[:description].any?}] %>
# </div>

# <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
# <%= image_tag(product.image, class: 'w-16') if product.image.attached? %>
# <td>


# <div class="my-5">
#     <% if @admin_product.images.attached? %>
#      <% @admin_product.images.each do |image|%>
#      <%= image_tag image, class: 'w-64' %>
#       <% end %>
#     <% else %>
#      <p>No images uploaded.</p>
#   <% end %>
# </div>

# <div>
# <% if @admin_product.images.attached? %>
#   <% @admin_product.images.each do |image| %>
#   <%= image_tag image, size: "200x200" %>
# <% end %>
# <% else %>
#  <p>No images uploaded.</p>
# <% end %>
# </div>

# <div class="my-5">
# <%= form.label :images %>
# <%= form.file_field :images, multiple: true, rows: 4, class: ["block shadow-sm rounded-md border px-3 py-2 mt-2 w-full", {"border-gray-400 focus:outline-blue-600": admin_product.errors[:description].none?, "border-red-400 focus:outline-red-600": admin_product.errors[:description].any?}] %>
# </div>

# <div class="my-5">
#     <% if admin_product.images.any? %>
#      <% admin_product.images.each do |image|%>
#      <%= image_tag image, class: "w-16" %>
#       <% end %>
#     <% end %>
#     <%= form.label :images %>
#     <%= form.file_field :images, multiple: true, rows: 4, class: ["block shadow-sm rounded-md border px-3 py-2 mt-2 w-full", {"border-gray-400 focus:outline-blue-600": admin_product.errors[:description].none?, "border-red-400 focus:outline-red-600": admin_product.errors[:description].any?}] %>
# </div>
