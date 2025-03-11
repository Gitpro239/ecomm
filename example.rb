# Product index.html.erb

# <% content_for :title, "Products" %>

# <div class="w-full">
# <% if notice.present? %>
#     <p class="py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-md inline-block" id="notice"><%= notice %></p>
# <% end %>

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


# <%= image_tag(@post.cover_art, class: 'w-60 h-60 object-cover') if @post.cover_art.attached? %>
# <%= image_tag(category.image, class: 'w-16') if category.image.attached? %>
# <%= category.image.present? ? image_tag(category.image.variant(:thumb), class: 'w-60 h-60 object-cover') :image_tag("https://via.placeholder.com/50") %>

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


# <% content_for :title, "Orders" %>

# <div class="w-full">
#   <% if notice.present? %>
#     <p class="py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-md inline-block" id="notice"><%= notice %></p>
#   <% end %>

#   <div class="flex justify-between items-center">
#     <h1 class="font-bold text-4xl">Orders</h1>
#     <%= link_to "New order", new_admin_order_path, class: "rounded-md px-3.5 py-2.5 bg-blue-600 hover:bg-blue-500 text-white block font-medium" %>
#   </div>

#   <div id="admin_orders" class="min-w-full divide-y divide-gray-200 space-y-5">
#     <% if @admin_orders.any? %>
#              <div class="flex flex-col sm  :flex-row justify-between items-center pb-5 sm:pb-0">
#                  <table class="table-auto w-full">
#                     <thead >
#                       <tr>

#                         <th scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                          Product Image
#                         </th>

#                         <th scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                          Order ID
#                         </th>

#                         <th scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                          Customer Email
#                         </th>

#                         <th scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                           Fulfilled
#                         </th>

#                         <th scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                           Address
#                         </th>

#                         <th scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                           Total
#                         </th>

#                         <th colspan="3" scope="col" class="text-sm font-medium text-gray-800 px-6 py-4 text-left">
#                           Action
#                         </th>

#                       </tr>
#                     </thead>
#                     <tbody>
#                       <% @admin_orders.each do |order| %>

#                         <tr class="bg-gray-50 border-b">

#                           <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <% if order.images.attached? %>
#                              <% order.images.each do |image| %>
#                              <%= image_tag image, size: "60x60" %>
#                              <% end %>
#                             <% end %>
#                           <td>

#                           <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <%= link_to order.id, [:admin, order], class: "underline" %>
#                           <td>

#                           <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
#                              <%= link_to order.customer_email, edit_admin_order_path(order) %>
#                           <td>

#                           <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <%= order.fulfilled %>
#                           <td>

#                           <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <%= order.address %>
#                           <td>

#                           <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <%= order.total %>
#                           <td>

#                           <td class="px-4 py-2 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <%= link_to "Show", [:admin, order], class: "w-full sm:w-auto text-center text-white rounded-md px-3.5 py-2.5 bg-green-600 hover:bg-green-500 inline-block font-medium" %>
#                           <td>

#                           <td class="px-4 py-2 whitespace-nowrap text-sm font-medium text-gray-800">
#                             <%= link_to "Edit", edit_admin_order_path(order), class: "w-full sm:w-auto text-center text-white rounded-md px-3.5 py-2.5 bg-gray-600 hover:bg-gray-500 inline-block font-medium" %>
#                           <td>

#                         </tr>
#                       <% end %>
#                     </tbody>
#                    </table>
#                </div>
#            <% else %>
#          <p class="text-center my-10">No Orders found.</p>
#       <% end %>
#  </div>



# <% content_for :title, "Stocks" %>

# <div class="w-full">
#   <% if notice.present? %>
#     <p class="py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-md inline-block" id="notice"><%= notice %></p>
#   <% end %>

#    <%# <div class="flex justify-between items-center">
#     <h1 class="font-bold text-4xl">Stocks</h1>
#     <%= link_to "New stock", new_admin_stock_path, class: "rounded-md px-3.5 py-2.5 bg-blue-600 hover:bg-blue-500 text-white block font-medium" %>
#    <%# </div>  %>

#    <div class="flex justify-between items-center">
#     <h1 class="font-bold text-4xl">Stocks</h1>
#     <%= link_to "New stock", new_admin_product_stock_path, class: "rounded-md px-3.5 py-2.5 bg-blue-600 hover:bg-blue-500 text-white block font-medium" %>
#    </div>

# <div id="admin_stocks" class="min-w-full divide-y divide-gray-200 space-y-5">
#  <div class="flex flex-col w-full py-4 p-6">
#     <div class="overflow-x-auto rounded">
#       <table class="min-w-full bg-gray-300" style="border-collapse: separate; border-spacing: 0;">
#           <thead class="text-center">
#             <tr>
#                 <th class="px-6 py-4 border-b-2 border-gray-200 bg-gray-300">Stock ID</th>
#                 <th class="px-6 py-4 border-b-2 border-gray-200 bg-gray-300">Size</th>
#                 <th class="px-6 py-4 border-b-2 border-gray-200 bg-gray-300">Amount</th>
#                 <th class="px-6 py-4 border-b-2 border-gray-200 bg-gray-300">Product</th>
#                 <th colspan="3" class="px-6 py-4 border-b-2 border-gray-200 bg-gray-300">Action</th>
#             </tr>
#           </thead>
#           <tbody class="text-dark-500 text-center">
#             <% if @admin_stocks.any? %>
#              <% @admin_stocks.each do |admin_stock| %>
#                 <tr>
#                   <td class="px-6 py-4 border-b border-gray-200"><%= admin_stock.id %></td>
#                   <td class="px-6 py-4 border-b border-gray-200"><%= admin_stock.size %></td>
#                   <td class="px-6 py-4 border-b border-gray-200"><%= admin_stock.amount %></td>
#                   <td class="px-6 py-4 border-b border-gray-200"><%= admin_stock.product.name %></td>
#                   <%# <td> <%= link_to "Show", [:admin, admin_product_stock], class: "w-full sm:w-auto text-center text-white rounded-md px-3.5 py-2.5 bg-green-600 hover:bg-green-500 inline-block font-medium" %> </td> %>
#                   <%# <td> <%= link_to "Show", admin_product_stock_path, class: "w-full sm:w-auto text-center text-white rounded-md px-3.5 py-2.5 bg-green-600 hover:bg-green-500 inline-block font-medium" %> </td> %>
#                   <%# <td> <%= link_to "Edit", edit_admin_product_stock_path(admin_stock), class: "w-full sm:w-auto text-center text-white rounded-md px-3.5 py-2.5 bg-gray-600 hover:bg-gray-500 inline-block font-medium" %> </td> %>
#                   <td> <%= button_to "Destroy", admin_product_stocks_path, method: :delete, data: { turbo_confirm: "Are you sure?" }, class: "w-full sm:w-auto rounded-md px-3.5 py-2.5 text-white bg-red-600 hover:bg-red-500 font-medium cursor-pointer" %> </td>
#                 </tr>
#                <% end %>
#              <% else %>
#                 <p class="text-center my-10">No stocks found.</p>

#              <% end %>
#           </tbody>
#       </table>
#     </div>
#   </div>
# </div>
